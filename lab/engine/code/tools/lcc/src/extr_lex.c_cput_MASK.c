__attribute__((used)) static void *FUNC0(int c, void *cl) {
	char *s = cl;

	if (c < 0 || c > 255)
		FUNC0("overflow in escape sequence with resulting value `%d'\n", c);
	*s++ = c;
	return s;
}