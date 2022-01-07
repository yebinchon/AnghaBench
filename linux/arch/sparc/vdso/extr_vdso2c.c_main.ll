; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vdso2c.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/vdso/extr_vdso2c.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [47 x i8] c"Usage: vdso2c RAW_INPUT STRIPPED_INPUT OUTPUT\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".so\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@outfilename = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 4
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %108

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 3
  %21 = load i8*, i8** %20, align 8
  %22 = call i8* @strdup(i8* %21)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp sge i32 %25, 3
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load i8*, i8** %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = getelementptr inbounds i8, i8* %31, i64 -3
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  store i8* null, i8** %11, align 8
  br label %69

36:                                               ; preds = %27, %18
  %37 = load i8*, i8** %11, align 8
  %38 = call i8* @strrchr(i8* %37, i8 signext 47)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %12, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  store i8* %43, i8** %11, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i8*, i8** %11, align 8
  %46 = call i8* @strchr(i8* %45, i8 signext 46)
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i8*, i8** %12, align 8
  store i8 0, i8* %50, align 1
  br label %51

51:                                               ; preds = %49, %44
  %52 = load i8*, i8** %11, align 8
  store i8* %52, i8** %12, align 8
  br label %53

53:                                               ; preds = %65, %51
  %54 = load i8*, i8** %12, align 8
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i8*, i8** %12, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 45
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i8*, i8** %12, align 8
  store i8 95, i8* %63, align 1
  br label %64

64:                                               ; preds = %62, %57
  br label %65

65:                                               ; preds = %64
  %66 = load i8*, i8** %12, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %12, align 8
  br label %53

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %35
  %70 = load i8**, i8*** %5, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @PROT_READ, align 4
  %74 = call i32 @map_input(i8* %72, i8** %8, i64* %6, i32 %73)
  %75 = load i8**, i8*** %5, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i32, i32* @PROT_READ, align 4
  %79 = call i32 @map_input(i8* %77, i8** %9, i64* %7, i32 %78)
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 3
  %82 = load i8*, i8** %81, align 8
  store i8* %82, i8** @outfilename, align 8
  %83 = load i8*, i8** @outfilename, align 8
  %84 = call i32* @fopen(i8* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %84, i32** %10, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %69
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 2
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %87, %69
  %93 = load i8*, i8** %8, align 8
  %94 = load i64, i64* %6, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32*, i32** %10, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @go(i8* %93, i64 %94, i8* %95, i64 %96, i32* %97, i8* %98)
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @munmap(i8* %100, i64 %101)
  %103 = load i8*, i8** %9, align 8
  %104 = load i64, i64* %7, align 8
  %105 = call i32 @munmap(i8* %103, i64 %104)
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @fclose(i32* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %92, %16
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @map_input(i8*, i8**, i64*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @go(i8*, i64, i8*, i64, i32*, i8*) #1

declare dso_local i32 @munmap(i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
