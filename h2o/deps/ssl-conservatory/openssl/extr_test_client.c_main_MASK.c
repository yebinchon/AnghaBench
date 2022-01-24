#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ MatchFound ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  SECURE_CIPHER_LIST ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 long FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  TARGET_HOST ; 
 int /*<<< orphan*/  TARGET_SERVER ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  TRUSTED_CA_PATHNAME ; 
 long X509_V_OK ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 char* FUNC21 (long) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC25(int argc, char *argv[]) {
	BIO *sbio;
	SSL_CTX *ssl_ctx;
	SSL *ssl;
	X509 *server_cert;

	// Initialize OpenSSL
	FUNC17();
	FUNC18();

 	// Check OpenSSL PRNG
	if(FUNC8() != 1) {
		FUNC22(stderr, "OpenSSL PRNG not seeded with enough data.");
		goto error_1;
	}

	ssl_ctx = FUNC11(FUNC19());
	
	// Enable certificate validation
	FUNC13(ssl_ctx, SSL_VERIFY_PEER, NULL);
	// Configure the CA trust store to be used
	if (FUNC10(ssl_ctx, TRUSTED_CA_PATHNAME, NULL) != 1) {
		FUNC22(stderr, "Couldn't load certificate trust store.\n");
		goto error_2;
	}

	// Only support secure cipher suites
	if (FUNC12(ssl_ctx, SECURE_CIPHER_LIST) != 1)
		goto error_2;

	// Create the SSL connection
	sbio = FUNC2(ssl_ctx);
	FUNC1(sbio, &ssl); 
	if(!ssl) {
	  FUNC22(stderr, "Can't locate SSL pointer\n");
		goto error_3;
	}

	// Do the SSL handshake
	FUNC3(sbio, TARGET_SERVER);
	if(FUNC14(ssl) <= 0) {
		// SSL Handshake failed
		long verify_err = FUNC16(ssl);
		if (verify_err != X509_V_OK) { 
			// It failed because the certificate chain validation failed
			FUNC22(stderr, "Certificate chain validation failed: %s\n", FUNC21(verify_err));
		}
		else {
			// It failed for another reason
			FUNC6(stderr);
		}
		goto error_3;
	}

	// Recover the server's certificate
	server_cert =  FUNC15(ssl);
	if (server_cert == NULL) {
		// The handshake was successful although the server did not provide a certificate
		// Most likely using an insecure anonymous cipher suite... get out!
		goto error_4;
	}

	// Validate the hostname
	if (FUNC24(TARGET_HOST, server_cert) != MatchFound) {
		FUNC22(stderr, "Hostname validation failed.\n");
		goto error_5;
	}

	// Hostname validation succeeded; we can start sending data
	FUNC23(sbio);


error_5:
	FUNC20(server_cert);

error_4:
	FUNC4(sbio);

error_3:
	FUNC0(sbio);

error_2:
	FUNC9(ssl_ctx);

error_1: // OpenSSL cleanup
    FUNC7();
    FUNC5();

	return 0;
}