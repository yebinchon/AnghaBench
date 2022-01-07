; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_ptlsbench.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_ptlsbench.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.utsname = type { i32, i32 }

@.str = private unnamed_addr constant [118 x i8] c"OS, HW, bits, mode, 10M ops, provider, version, algorithm, N, L, encrypt us, decrypt us, encrypt mbps, decrypt mbps,\0A\00", align 1
@nb_aead_list = common dso_local global i64 0, align 8
@aead_list = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Unexpected value of test sum s = %llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca [128 x i8], align 16
  %12 = alloca %struct.utsname, align 4
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 3735928559, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %14 = call i32 @bench_basic(i64* %7)
  store i32 %14, i32* %9, align 4
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  store i8 0, i8* %16, align 16
  %17 = call i64 @uname(%struct.utsname* %12)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.utsname, %struct.utsname* %12, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strlen(i32 %21)
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 128
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %28 = getelementptr inbounds %struct.utsname, %struct.utsname* %12, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strcpy(i8* %27, i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  %32 = getelementptr inbounds %struct.utsname, %struct.utsname* %12, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlen(i32 %33)
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %36, 128
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %40 = getelementptr inbounds %struct.utsname, %struct.utsname* %12, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcpy(i8* %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %31
  br label %44

44:                                               ; preds = %43, %2
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %13, align 8
  br label %46

46:                                               ; preds = %81, %44
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @nb_aead_list, align 8
  %52 = icmp ult i64 %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %84

55:                                               ; preds = %53
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %58 = load i32, i32* %9, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aead_list, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aead_list, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aead_list, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @aead_list, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @bench_run_aead(i8* %56, i8* %57, i32 %58, i64 %59, i32 %64, i32 %69, i32 %74, i32 %79, i32 1000, i32 1500, i64* %8)
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %55
  %82 = load i64, i64* %13, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %13, align 8
  br label %46

84:                                               ; preds = %53
  %85 = load i64, i64* %8, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %8, align 8
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @bench_basic(i64*) #1

declare dso_local i64 @uname(%struct.utsname*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @bench_run_aead(i8*, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
