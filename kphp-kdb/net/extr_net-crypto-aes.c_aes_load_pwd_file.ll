; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_load_pwd_file.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-crypto-aes.c_aes_load_pwd_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"/dev/random\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@rand_buf = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"added %d bytes of real entropy to the AES security key\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@pwd_len = common dso_local global i32 0, align 4
@DEFAULT_PWD_FILE = common dso_local global i8* null, align 8
@pwd_buf = common dso_local global i64 0, align 8
@MAX_PWD_LEN = common dso_local global i32 0, align 4
@MIN_PWD_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"loaded password file %s\0A\00", align 1
@aes_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aes_load_pwd_file(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i32, i32* @O_RDONLY, align 4
  %8 = load i32, i32* @O_NONBLOCK, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @open(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i64, i64* @rand_buf, align 8
  %16 = call i32 @read(i32 %14, i64 %15, i32 16)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i32, i32* @verbosity, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* @stderr, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %19, %13
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @close(i32 %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 16
  br i1 %31, label %32, label %55

32:                                               ; preds = %29
  %33 = load i32, i32* @O_RDONLY, align 4
  %34 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* @pwd_len, align 4
  store i32 -1, i32* %2, align 4
  br label %110

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i64, i64* @rand_buf, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 16, %44
  %46 = call i32 @read(i32 %39, i64 %43, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = icmp ne i32 %49, 16
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  store i32 0, i32* @pwd_len, align 4
  store i32 -1, i32* %2, align 4
  br label %110

52:                                               ; preds = %38
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @close(i32 %53)
  br label %55

55:                                               ; preds = %52, %29
  %56 = call i64 (...) @lrand48()
  %57 = load i64, i64* @rand_buf, align 8
  %58 = inttoptr i64 %57 to i64*
  %59 = load i64, i64* %58, align 8
  %60 = xor i64 %59, %56
  store i64 %60, i64* %58, align 8
  %61 = load i64, i64* @rand_buf, align 8
  %62 = inttoptr i64 %61 to i64*
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @srand48(i64 %63)
  %65 = load i8*, i8** %3, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %55
  %68 = load i8*, i8** %3, align 8
  br label %71

69:                                               ; preds = %55
  %70 = load i8*, i8** @DEFAULT_PWD_FILE, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i8* [ %68, %67 ], [ %70, %69 ]
  %73 = load i32, i32* @O_RDONLY, align 4
  %74 = call i32 @open(i8* %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %110

78:                                               ; preds = %71
  %79 = load i32, i32* %4, align 4
  %80 = load i64, i64* @pwd_buf, align 8
  %81 = load i32, i32* @MAX_PWD_LEN, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @read(i32 %79, i64 %80, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @MIN_PWD_LEN, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %78
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @MAX_PWD_LEN, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %89, %78
  store i32 -1, i32* %2, align 4
  br label %110

94:                                               ; preds = %89
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* @pwd_len, align 4
  %96 = load i32, i32* @verbosity, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i32, i32* @stderr, align 4
  %100 = load i8*, i8** %3, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i8*, i8** %3, align 8
  br label %106

104:                                              ; preds = %98
  %105 = load i8*, i8** @DEFAULT_PWD_FILE, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i8* [ %103, %102 ], [ %105, %104 ]
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  br label %109

109:                                              ; preds = %106, %94
  store i32 1, i32* @aes_initialized, align 4
  store i32 1, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %93, %77, %51, %37
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @lrand48(...) #1

declare dso_local i32 @srand48(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
