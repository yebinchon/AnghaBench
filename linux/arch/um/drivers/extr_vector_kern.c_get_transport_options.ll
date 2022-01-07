; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_get_transport_options.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_vector_kern.c_get_transport_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arglist = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"transport\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@VECTOR_RX = common dso_local global i32 0, align 4
@VECTOR_TX = common dso_local global i32 0, align 4
@TRANS_TAP = common dso_local global i32 0, align 4
@TRANS_TAP_LEN = common dso_local global i32 0, align 4
@TRANS_HYBRID = common dso_local global i32 0, align 4
@TRANS_HYBRID_LEN = common dso_local global i32 0, align 4
@VECTOR_BPF = common dso_local global i32 0, align 4
@TRANS_RAW = common dso_local global i32 0, align 4
@TRANS_RAW_LEN = common dso_local global i32 0, align 4
@VECTOR_QDISC_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arglist*)* @get_transport_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_transport_options(%struct.arglist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arglist*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.arglist* %0, %struct.arglist** %3, align 8
  %9 = load %struct.arglist*, %struct.arglist** %3, align 8
  %10 = call i8* @uml_vector_fetch_arg(%struct.arglist* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %4, align 8
  %11 = load %struct.arglist*, %struct.arglist** %3, align 8
  %12 = call i8* @uml_vector_fetch_arg(%struct.arglist* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @VECTOR_RX, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @VECTOR_TX, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 10, i64* %8)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %21
  br label %26

26:                                               ; preds = %25, %17
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i8*, i8** %4, align 8
  %29 = load i32, i32* @TRANS_TAP, align 4
  %30 = load i32, i32* @TRANS_TAP_LEN, align 4
  %31 = call i64 @strncmp(i8* %28, i32 %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %60

34:                                               ; preds = %27
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @TRANS_HYBRID, align 4
  %37 = load i32, i32* @TRANS_HYBRID_LEN, align 4
  %38 = call i64 @strncmp(i8* %35, i32 %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @VECTOR_BPF, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %34
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* @TRANS_RAW, align 4
  %47 = load i32, i32* @TRANS_RAW_LEN, align 4
  %48 = call i64 @strncmp(i8* %45, i32 %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @VECTOR_QDISC_BYPASS, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %44
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %50, %40, %33
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i8* @uml_vector_fetch_arg(%struct.arglist*, i8*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
