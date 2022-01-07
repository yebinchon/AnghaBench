; ModuleID = '/home/carl/AnghaBench/libgit2/tests/rebase/extr_sign.c_test_rebase_sign__gpg_with_no_field.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/rebase/extr_sign.c_test_rebase_sign__gpg_with_no_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_REBASE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [1074 x i8] c"tree cd99b26250099fc38d30bfaed7797a7275ed3366\0Aparent f87d14a4a236582a0278a916340a793714256864\0Aauthor Edward Thomson <ethomson@edwardthomson.com> 1405625055 -0400\0Acommitter Rebaser <rebaser@rebaser.rb> 1405694510 +0000\0Agpgsig -----BEGIN PGP SIGNATURE-----\0A \0A iQIzBAEBCgAdFiEEgVlDEfSlmKn0fvGgK++h5T2/ctIFAlwZcrAACgkQK++h5T2/\0A ctIPVhAA42RyZhMdKl5Bm0KtQco2scsukIg2y7tjSwhti91zDu3HQgpusjjo0fQx\0A ZzB+OrmlvQ9CDcGpZ0THIzXD8GRJoDMPqdrvZVrBWkGcHvw7/YPA8skzsjkauJ8W\0A 7lzF5LCuHSS6OUmPT/+5hEHPin5PB3zhfszyC+Q7aujnIuPJMrKiMnUa+w1HWifM\0A km49OOygQ9S6NQoVuEQede22+c76DlDL7yFghGoo1f0sKCE/9LW6SEnwI/bWv9eo\0A nom5vOPrvQeJiYCQk+2DyWo8RdSxINtY+G9bPE4RXm+6ZgcXECPm9TYDIWpL36fC\0A jvtGLs98woWFElOziBMp5Tb630GMcSI+q5ivHfJ3WS5NKLYLHBNK4iSFN0/dgAnB\0A dj6GcKXKWnIBWn6ZM4o40pcM5KSRUUCLtA0ZmjJH4c4zx3X5fUxd+enwkf3e9VZO\0A fNKC/+xfq6NfoPUPK9+UnchHpJaJw7RG5tZS+sWCz2xpQ1y3/o49xImNyM3wnpvB\0A cRAZabqIHpZa9/DIUkELOtCzln6niqkjRgg3M/YCCNznwV+0RNgz87VtyTPerdef\0A xrqn0+ROMF6ebVqIs6PPtuPkxnAJu7TMKXVB5rFnAewS24e6cIGFzeIA7810py3l\0A cttVRsdOoego+fiy08eFE+aJIeYiINRGhqOBTsuqG4jIdpdKxPE=\0A =KbsY\0A -----END PGP SIGNATURE-----\0A\00", align 1
@signing_cb_gpg = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"refs/heads/gravy\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"refs/heads/veal\00", align 1
@signature = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"bf78348e45c8286f52b760f1db15cb6da030f2ef\00", align 1
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_rebase_sign__gpg_with_no_field() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_REBASE_OPTIONS_INIT to i8*), i64 4, i1 false)
  store i8* getelementptr inbounds ([1074 x i8], [1074 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %13 = load i32, i32* @signing_cb_gpg, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @repo, align 4
  %16 = call i32 @git_reference_lookup(i32** %2, i32 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @git_reference_lookup(i32** %3, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @repo, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @git_annotated_commit_from_ref(i32** %4, i32 %21, i32* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32, i32* @repo, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_annotated_commit_from_ref(i32** %5, i32 %25, i32* %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @repo, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @git_rebase_init(i32** %1, i32 %29, i32* %30, i32* %31, i32* null, %struct.TYPE_4__* %9)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @git_rebase_next(i32** %6, i32* %34)
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = load i32*, i32** %1, align 8
  %38 = load i32, i32* @signature, align 4
  %39 = call i32 @git_rebase_commit(i32* %7, i32* %37, i32* null, i32 %38, i32* null, i32* null)
  %40 = call i32 @cl_git_pass(i32 %39)
  %41 = call i32 @git_oid_fromstr(i32* %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @cl_assert_equal_oid(i32* %8, i32* %7)
  %43 = load i32, i32* @repo, align 4
  %44 = call i32 @git_commit_lookup(i32** %10, i32 %43, i32* %7)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i8*, i8** %11, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @git_commit_raw_header(i32* %47)
  %49 = call i32 @cl_assert_equal_s(i8* %46, i32 %48)
  %50 = load i32, i32* @GIT_ITEROVER, align 4
  %51 = load i32*, i32** %1, align 8
  %52 = call i32 @git_rebase_next(i32** %6, i32* %51)
  %53 = call i32 @cl_git_fail_with(i32 %50, i32 %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_reference_free(i32* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = call i32 @git_reference_free(i32* %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @git_annotated_commit_free(i32* %58)
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @git_annotated_commit_free(i32* %60)
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @git_commit_free(i32* %62)
  %64 = load i32*, i32** %1, align 8
  %65 = call i32 @git_rebase_free(i32* %64)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #2

declare dso_local i32 @git_annotated_commit_from_ref(i32**, i32, i32*) #2

declare dso_local i32 @git_rebase_init(i32**, i32, i32*, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_rebase_next(i32**, i32*) #2

declare dso_local i32 @git_rebase_commit(i32*, i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_commit_raw_header(i32*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_annotated_commit_free(i32*) #2

declare dso_local i32 @git_commit_free(i32*) #2

declare dso_local i32 @git_rebase_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
