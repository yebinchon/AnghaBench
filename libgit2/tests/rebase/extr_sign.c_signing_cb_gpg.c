
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int GIT_OK ;
 int cl_assert_equal_b (int,int ) ;
 int cl_assert_equal_p (int *,void*) ;
 int cl_assert_equal_s (int ,char const*) ;
 int cl_git_pass (int ) ;
 int expected_commit_content ;
 int git_buf_is_allocated (int *) ;
 int git_buf_set (int *,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

int signing_cb_gpg(
 git_buf *signature,
 git_buf *signature_field,
 const char *commit_content,
 void *payload)
{
 const char *gpg_signature = "-----BEGIN PGP SIGNATURE-----\n\niQIzBAEBCgAdFiEEgVlDEfSlmKn0fvGgK++h5T2/ctIFAlwZcrAACgkQK++h5T2/\nctIPVhAA42RyZhMdKl5Bm0KtQco2scsukIg2y7tjSwhti91zDu3HQgpusjjo0fQx\nZzB+OrmlvQ9CDcGpZ0THIzXD8GRJoDMPqdrvZVrBWkGcHvw7/YPA8skzsjkauJ8W\n7lzF5LCuHSS6OUmPT/+5hEHPin5PB3zhfszyC+Q7aujnIuPJMrKiMnUa+w1HWifM\nkm49OOygQ9S6NQoVuEQede22+c76DlDL7yFghGoo1f0sKCE/9LW6SEnwI/bWv9eo\nnom5vOPrvQeJiYCQk+2DyWo8RdSxINtY+G9bPE4RXm+6ZgcXECPm9TYDIWpL36fC\njvtGLs98woWFElOziBMp5Tb630GMcSI+q5ivHfJ3WS5NKLYLHBNK4iSFN0/dgAnB\ndj6GcKXKWnIBWn6ZM4o40pcM5KSRUUCLtA0ZmjJH4c4zx3X5fUxd+enwkf3e9VZO\nfNKC/+xfq6NfoPUPK9+UnchHpJaJw7RG5tZS+sWCz2xpQ1y3/o49xImNyM3wnpvB\ncRAZabqIHpZa9/DIUkELOtCzln6niqkjRgg3M/YCCNznwV+0RNgz87VtyTPerdef\nxrqn0+ROMF6ebVqIs6PPtuPkxnAJu7TMKXVB5rFnAewS24e6cIGFzeIA7810py3l\ncttVRsdOoego+fiy08eFE+aJIeYiINRGhqOBTsuqG4jIdpdKxPE=\n=KbsY\n-----END PGP SIGNATURE-----";
 cl_assert_equal_b(0, git_buf_is_allocated(signature));
 cl_assert_equal_b(0, git_buf_is_allocated(signature_field));
 cl_assert_equal_s(expected_commit_content, commit_content);
 cl_assert_equal_p(((void*)0), payload);

 cl_git_pass(git_buf_set(signature, gpg_signature, strlen(gpg_signature) + 1));
 return GIT_OK;
}
