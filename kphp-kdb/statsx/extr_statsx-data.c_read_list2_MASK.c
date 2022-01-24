int* FUNC0 () {
  int x = FUNC0 ();
  int y = FUNC0 ();
  FUNC0 (x >= y);
  int *a = FUNC0 (2 * (x + 1) * sizeof (int));
  FUNC0 (a);
  a[0] = x; a[1] = y; a += 2;
  FUNC0 ((char *)a, 2 * y * sizeof (int));
  return a;
}