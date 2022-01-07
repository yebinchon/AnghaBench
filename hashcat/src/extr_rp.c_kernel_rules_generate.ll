; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_rp.c_kernel_rules_generate.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_rp.c_kernel_rules_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32, i32 }

@RP_RULE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_rules_generate(%struct.TYPE_5__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @hccalloc(i64 %17, i32 4)
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* @RP_RULE_SIZE, align 4
  %21 = call i64 @hcmalloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %10, align 8
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %50, %3
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load i8*, i8** %10, align 8
  %31 = load i32, i32* @RP_RULE_SIZE, align 4
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @generate_random_rule(i8* %33, i32 %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @cpu_rule_to_kernel_rule(i8* %41, i32 %42, i32* %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %29
  br label %50

49:                                               ; preds = %29
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  br label %23

53:                                               ; preds = %23
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @hcfree(i8* %54)
  %56 = load i64, i64* %8, align 8
  %57 = load i64*, i64** %6, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32**, i32*** %5, align 8
  store i32* %58, i32** %59, align 8
  ret i32 0
}

declare dso_local i64 @hccalloc(i64, i32) #1

declare dso_local i64 @hcmalloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @generate_random_rule(i8*, i32, i32) #1

declare dso_local i32 @cpu_rule_to_kernel_rule(i8*, i32, i32*) #1

declare dso_local i32 @hcfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
