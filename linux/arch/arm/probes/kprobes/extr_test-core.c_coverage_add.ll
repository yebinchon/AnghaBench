; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/probes/kprobes/extr_test-core.c_coverage_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.coverage_entry* }
%struct.coverage_entry = type { i32, i32, %struct.decode_header* }
%struct.decode_header = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@coverage = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@DECODE_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @coverage_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coverage_add(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coverage_entry*, align 8
  %4 = alloca %struct.coverage_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.decode_header*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load %struct.coverage_entry*, %struct.coverage_entry** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @coverage, i32 0, i32 1), align 8
  store %struct.coverage_entry* %9, %struct.coverage_entry** %3, align 8
  %10 = load %struct.coverage_entry*, %struct.coverage_entry** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @coverage, i32 0, i32 1), align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @coverage, i32 0, i32 0), align 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %10, i64 %12
  store %struct.coverage_entry* %13, %struct.coverage_entry** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %73, %1
  %15 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %16 = load %struct.coverage_entry*, %struct.coverage_entry** %4, align 8
  %17 = icmp ult %struct.coverage_entry* %15, %16
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %20 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %19, i32 0, i32 2
  %21 = load %struct.decode_header*, %struct.decode_header** %20, align 8
  store %struct.decode_header* %21, %struct.decode_header** %7, align 8
  %22 = load %struct.decode_header*, %struct.decode_header** %7, align 8
  %23 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DECODE_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %29 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %73

34:                                               ; preds = %18
  %35 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %36 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %76

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.decode_header*, %struct.decode_header** %7, align 8
  %47 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %45, %49
  %51 = load %struct.decode_header*, %struct.decode_header** %7, align 8
  %52 = getelementptr inbounds %struct.decode_header, %struct.decode_header* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %73

57:                                               ; preds = %44
  %58 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %59 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %41
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %71 [
    i32 128, label %62
    i32 133, label %65
    i32 129, label %65
    i32 132, label %65
    i32 131, label %69
    i32 130, label %70
  ]

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %72

65:                                               ; preds = %60, %60, %60
  %66 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @coverage_add_registers(%struct.coverage_entry* %66, i32 %67)
  br label %76

69:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %72

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %60, %70
  br label %76

72:                                               ; preds = %69, %62
  br label %73

73:                                               ; preds = %72, %56, %33
  %74 = load %struct.coverage_entry*, %struct.coverage_entry** %3, align 8
  %75 = getelementptr inbounds %struct.coverage_entry, %struct.coverage_entry* %74, i32 1
  store %struct.coverage_entry* %75, %struct.coverage_entry** %3, align 8
  br label %14

76:                                               ; preds = %65, %71, %40, %14
  ret void
}

declare dso_local i32 @coverage_add_registers(%struct.coverage_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
