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
typedef  int /*<<< orphan*/  const fe25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int) ; 
 int FUNC3 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  const sqrtm1 ; 

__attribute__((used)) static int
FUNC8(fe25519 x, const fe25519 u, const fe25519 v)
{
    fe25519 v3;
    fe25519 vxx;
    fe25519 m_root_check, p_root_check, f_root_check;
    fe25519 x_sqrtm1;
    int     has_m_root, has_p_root, has_f_root;

    FUNC6(v3, v);
    FUNC4(v3, v3, v); /* v3 = v^3 */
    FUNC6(x, v3);
    FUNC4(x, x, v);
    FUNC4(x, x, u); /* x = uv^7 */

    FUNC5(x, x); /* x = (uv^7)^((q-5)/8) */
    FUNC4(x, x, v3);
    FUNC4(x, x, u); /* x = uv^3(uv^7)^((q-5)/8) */

    FUNC6(vxx, x);
    FUNC4(vxx, vxx, v); /* vx^2 */
    FUNC7(m_root_check, vxx, u); /* vx^2-u */
    FUNC1(p_root_check, vxx, u); /* vx^2+u */
    FUNC4(f_root_check, u, sqrtm1); /* u*sqrt(-1) */
    FUNC1(f_root_check, vxx, f_root_check); /* vx^2+u*sqrt(-1) */
    has_m_root = FUNC3(m_root_check);
    has_p_root = FUNC3(p_root_check);
    has_f_root = FUNC3(f_root_check);
    FUNC4(x_sqrtm1, x, sqrtm1); /* x*sqrt(-1) */

    FUNC2(x, x_sqrtm1, has_p_root | has_f_root);
    FUNC0(x, x);

    return has_m_root | has_p_root;
}