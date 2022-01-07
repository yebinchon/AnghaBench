; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_vdso-transplant.c_transplant_vdso.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_vdso-transplant.c_transplant_vdso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/proc/%d/maps\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%8x-%8x %*s %*s %*s %*s %ms\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"[vdso]\00", align 1
@PTRACE_POKEDATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"ptrace vdso poke\00", align 1
@AX_SYSINFO = common dso_local global i32 0, align 4
@AX_SYSINFO_EHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transplant_vdso(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %41, %3
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %23 = load i32*, i32** %8, align 8
  %24 = call i32* @fgets(i8* %22, i32 256, i32* %23)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  store i8* null, i8** %12, align 8
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %28 = call i32 @sscanf(i8* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64* %10, i64* %11, i8** %12)
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load i8*, i8** %12, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @free(i8* %36)
  br label %42

38:                                               ; preds = %31
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %38, %26
  br label %21

42:                                               ; preds = %35, %21
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @fclose(i32* %43)
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %13, align 8
  br label %46

46:                                               ; preds = %76, %42
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  store i64 0, i64* %14, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load i64, i64* %6, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 0, %60
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = bitcast i8* %62 to i64*
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %14, align 8
  br label %65

65:                                               ; preds = %56, %50
  %66 = load i32, i32* @PTRACE_POKEDATA, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = call i64 @ptrace(i32 %66, i32 %67, i64 %68, i64 %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 @exit(i32 1) #3
  unreachable

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 8
  store i64 %78, i64* %13, align 8
  br label %46

79:                                               ; preds = %46
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 24
  %82 = bitcast i8* %81 to i64*
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add nsw i64 %83, %84
  store i64 %85, i64* %15, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @AX_SYSINFO, align 4
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @aux_write(i32 %86, i32 %87, i64 %88)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @AX_SYSINFO_EHDR, align 4
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @aux_write(i32 %90, i32 %91, i64 %92)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @ptrace(i32, i32, i64, i64) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aux_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
