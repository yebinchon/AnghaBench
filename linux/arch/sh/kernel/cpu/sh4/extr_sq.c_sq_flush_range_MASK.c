void FUNC0(unsigned long start, unsigned int len)
{
	unsigned long *sq = (unsigned long *)start;

	/* Flush the queues */
	for (len >>= 5; len--; sq += 8)
		FUNC0(sq);

	/* Wait for completion */
	FUNC0();
}