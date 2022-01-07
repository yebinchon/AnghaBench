; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_cred_helpers.c_git_cred_userpass.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_cred_helpers.c_git_cred_userpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@GIT_CREDTYPE_USERNAME = common dso_local global i32 0, align 4
@GIT_CREDTYPE_USERPASS_PLAINTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_cred_userpass(i32** %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i8*, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %12, align 8
  store i8* null, i8** %13, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @GIT_UNUSED(i8* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %5
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %5
  store i32 -1, i32* %6, align 4
  br label %66

26:                                               ; preds = %20
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %13, align 8
  br label %42

35:                                               ; preds = %26
  %36 = load i8*, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  store i8* %39, i8** %13, align 8
  br label %41

40:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %66

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %31
  %43 = load i32, i32* @GIT_CREDTYPE_USERNAME, align 4
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32**, i32*** %7, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @git_cred_username_new(i32** %48, i8* %49)
  store i32 %50, i32* %6, align 4
  br label %66

51:                                               ; preds = %42
  %52 = load i32, i32* @GIT_CREDTYPE_USERPASS_PLAINTEXT, align 4
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = load i32**, i32*** %7, align 8
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @git_cred_userpass_plaintext_new(i32** %57, i8* %58, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56, %51
  store i32 -1, i32* %6, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %65, %64, %47, %40, %25
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @git_cred_username_new(i32**, i8*) #1

declare dso_local i64 @git_cred_userpass_plaintext_new(i32**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
