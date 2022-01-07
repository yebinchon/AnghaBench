; ModuleID = '/home/carl/AnghaBench/git/t/helper/extr_test-hash.c_cmd_hash_impl.c'
source_filename = "/home/carl/AnghaBench/git/t/helper/extr_test-hash.c_cmd_hash_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.git_hash_algo = type { i32, i32 (i8*, i32*)*, i32 (i32*, i8*, i64)*, i32 (i32*)* }

@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@hash_algos = common dso_local global %struct.git_hash_algo* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"bufsz %u is too big, halving...\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OOPS\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"test-hash\00", align 1
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_hash_impl(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.git_hash_algo*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %8, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %9, align 8
  store i32 8192, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.git_hash_algo*, %struct.git_hash_algo** @hash_algos, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %22, i64 %24
  store %struct.git_hash_algo* %25, %struct.git_hash_algo** %13, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %43

28:                                               ; preds = %3
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @strcmp(i8* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  store i32 1, i32* %11, align 4
  br label %42

35:                                               ; preds = %28
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strtoul(i8* %38, i32* null, i32 10)
  %40 = mul nsw i32 %39, 1024
  %41 = mul nsw i32 %40, 1024
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %35, %34
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 8192, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %43
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %10, align 4
  %50 = call i8* @malloc(i32 %49)
  store i8* %50, i8** %12, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* @stderr, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @fprintf(i32 %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = udiv i32 %56, 2
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ult i32 %58, 1024
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = call i32 @die(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %52
  br label %48

63:                                               ; preds = %48
  %64 = load %struct.git_hash_algo*, %struct.git_hash_algo** %13, align 8
  %65 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %64, i32 0, i32 3
  %66 = load i32 (i32*)*, i32 (i32*)** %65, align 8
  %67 = call i32 %66(i32* %7)
  br label %68

68:                                               ; preds = %103, %63
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %12, align 8
  store i8* %70, i8** %16, align 8
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %17, align 4
  store i64 0, i64* %15, align 8
  br label %72

72:                                               ; preds = %87, %69
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %72
  %76 = load i8*, i8** %16, align 8
  %77 = load i32, i32* %17, align 4
  %78 = call i64 @xread(i32 0, i8* %76, i32 %77)
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %99

82:                                               ; preds = %75
  %83 = load i64, i64* %14, align 8
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = call i32 @die_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i64, i64* %14, align 8
  %89 = load i64, i64* %15, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %15, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i8*, i8** %16, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 %91
  store i8* %93, i8** %16, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i32, i32* %17, align 4
  %96 = zext i32 %95 to i64
  %97 = sub nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %17, align 4
  br label %72

99:                                               ; preds = %81, %72
  %100 = load i64, i64* %15, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %110

103:                                              ; preds = %99
  %104 = load %struct.git_hash_algo*, %struct.git_hash_algo** %13, align 8
  %105 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %104, i32 0, i32 2
  %106 = load i32 (i32*, i8*, i64)*, i32 (i32*, i8*, i64)** %105, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load i64, i64* %15, align 8
  %109 = call i32 %106(i32* %7, i8* %107, i64 %108)
  br label %68

110:                                              ; preds = %102
  %111 = load %struct.git_hash_algo*, %struct.git_hash_algo** %13, align 8
  %112 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %111, i32 0, i32 1
  %113 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %112, align 8
  %114 = call i32 %113(i8* %21, i32* %7)
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.git_hash_algo*, %struct.git_hash_algo** %13, align 8
  %119 = getelementptr inbounds %struct.git_hash_algo, %struct.git_hash_algo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @stdout, align 4
  %122 = call i32 @fwrite(i8* %21, i32 1, i32 %120, i32 %121)
  br label %127

123:                                              ; preds = %110
  %124 = load %struct.git_hash_algo*, %struct.git_hash_algo** %13, align 8
  %125 = call i32 @hash_to_hex_algop(i8* %21, %struct.git_hash_algo* %124)
  %126 = call i32 @puts(i32 %125)
  br label %127

127:                                              ; preds = %123, %117
  %128 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @strtoul(i8*, i32*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @fprintf(i32, i8*, i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local i64 @xread(i32, i8*, i32) #2

declare dso_local i32 @die_errno(i8*) #2

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #2

declare dso_local i32 @puts(i32) #2

declare dso_local i32 @hash_to_hex_algop(i8*, %struct.git_hash_algo*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
