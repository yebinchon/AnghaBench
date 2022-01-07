; ModuleID = '/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_s3_read_awssecret.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/klib/extr_kurl.c_s3_read_awssecret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/.awssecret\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @s3_read_awssecret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @s3_read_awssecret(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* null, i8** %2, align 8
  br label %117

18:                                               ; preds = %13
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = add nsw i32 %20, 12
  store i32 %21, i32* %9, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = add nsw i32 %23, 12
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @strcpy(i8* %27, i8* %28)
  %30 = call i32 @strcat(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %33

31:                                               ; preds = %1
  %32 = load i8*, i8** %3, align 8
  store i8* %32, i8** %7, align 8
  br label %33

33:                                               ; preds = %31, %18
  %34 = load i8*, i8** %7, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %35, i32** %8, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = icmp ne i8* %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @free(i8* %40)
  br label %42

42:                                               ; preds = %39, %33
  %43 = load i32*, i32** %8, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i8* null, i8** %2, align 8
  br label %117

46:                                               ; preds = %42
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @fread(i8* %47, i32 1, i32 127, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @fclose(i32* %50)
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  store i8* %55, i8** %4, align 8
  br label %56

56:                                               ; preds = %69, %46
  %57 = load i8*, i8** %4, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load i8*, i8** %4, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 10
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ false, %56 ], [ %65, %61 ]
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  br label %56

72:                                               ; preds = %66
  %73 = load i8*, i8** %4, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i8* null, i8** %2, align 8
  br label %117

78:                                               ; preds = %72
  %79 = load i8*, i8** %4, align 8
  store i8 0, i8* %79, align 1
  %80 = load i8*, i8** %4, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %5, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %4, align 8
  br label %84

84:                                               ; preds = %97, %78
  %85 = load i8*, i8** %4, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load i8*, i8** %4, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 10
  br label %94

94:                                               ; preds = %89, %84
  %95 = phi i1 [ false, %84 ], [ %93, %89 ]
  br i1 %95, label %96, label %100

96:                                               ; preds = %94
  br label %97

97:                                               ; preds = %96
  %98 = load i8*, i8** %4, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %4, align 8
  br label %84

100:                                              ; preds = %94
  %101 = load i8*, i8** %4, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = add nsw i64 %106, 1
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i64 @malloc(i32 %109)
  %111 = inttoptr i64 %110 to i8*
  store i8* %111, i8** %4, align 8
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @memcpy(i8* %112, i8* %113, i32 %114)
  %116 = load i8*, i8** %4, align 8
  store i8* %116, i8** %2, align 8
  br label %117

117:                                              ; preds = %100, %77, %45, %17
  %118 = load i8*, i8** %2, align 8
  ret i8* %118
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @strcat(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
