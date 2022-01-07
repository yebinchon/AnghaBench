; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_main.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_nl_classifier_test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_classifier_instance = type { i32, i32 }

@nl_cls_inst = common dso_local global %struct.nl_classifier_instance zeroinitializer, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to parse arguments\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to init generic netlink\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.nl_classifier_instance*, align 8
  %7 = alloca i8, align 1
  %8 = alloca [4 x i64], align 16
  %9 = alloca [4 x i64], align 16
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.nl_classifier_instance* @nl_cls_inst, %struct.nl_classifier_instance** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %17 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %18 = call i32 @nl_classifier_parse_arg(i32 %14, i8** %15, i8* %7, i64* %16, i64* %17, i16* %10, i16* %11, i32* %12)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %6, align 8
  %26 = call i32 @nl_classifier_init(%struct.nl_classifier_instance* %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %24
  %33 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %6, align 8
  %34 = load i8, i8* %7, align 1
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %8, i64 0, i64 0
  %36 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %37 = load i16, i16* %10, align 2
  %38 = load i16, i16* %11, align 2
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @nl_classifier_offload(%struct.nl_classifier_instance* %33, i8 zeroext %34, i64* %35, i64* %36, i16 zeroext %37, i16 zeroext %38, i32 %39)
  br label %41

41:                                               ; preds = %47, %32
  %42 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %6, align 8
  %43 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %6, align 8
  %49 = getelementptr inbounds %struct.nl_classifier_instance, %struct.nl_classifier_instance* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nl_recvmsgs_default(i32 %50)
  br label %41

52:                                               ; preds = %41
  %53 = load %struct.nl_classifier_instance*, %struct.nl_classifier_instance** %6, align 8
  %54 = call i32 @nl_classifier_exit(%struct.nl_classifier_instance* %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %29, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @nl_classifier_parse_arg(i32, i8**, i8*, i64*, i64*, i16*, i16*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @nl_classifier_init(%struct.nl_classifier_instance*) #1

declare dso_local i32 @nl_classifier_offload(%struct.nl_classifier_instance*, i8 zeroext, i64*, i64*, i16 zeroext, i16 zeroext, i32) #1

declare dso_local i32 @nl_recvmsgs_default(i32) #1

declare dso_local i32 @nl_classifier_exit(%struct.nl_classifier_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
