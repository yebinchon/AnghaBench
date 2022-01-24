int FUNC0 (const char *name) {
  int l = strlen (name);
  FUNC0 (l >= 4 && !strcmp (name + l - 4, ".tmp") && l <= 256);
  return printf ("%.*s\n", l - 4, name);
}