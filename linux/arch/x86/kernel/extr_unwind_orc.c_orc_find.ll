; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_orc_find.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_orc_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_entry = type { i32 }

@orc_find.orc = internal global %struct.orc_entry* null, align 8
@orc_init = common dso_local global i32 0, align 4
@null_orc_entry = common dso_local global %struct.orc_entry zeroinitializer, align 4
@LOOKUP_START_IP = common dso_local global i64 0, align 8
@LOOKUP_STOP_IP = common dso_local global i64 0, align 8
@LOOKUP_BLOCK_SIZE = common dso_local global i64 0, align 8
@lookup_num_blocks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WARNING: bad lookup idx: idx=%u num=%u ip=%pB\0A\00", align 1
@orc_lookup = common dso_local global i32* null, align 8
@__start_orc_unwind = common dso_local global i64 0, align 8
@__stop_orc_unwind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"WARNING: bad lookup value: idx=%u num=%u start=%u stop=%u ip=%pB\0A\00", align 1
@__start_orc_unwind_ip = common dso_local global i32 0, align 4
@__stop_orc_unwind_ip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.orc_entry* (i64)* @orc_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.orc_entry* @orc_find(i64 %0) #0 {
  %2 = alloca %struct.orc_entry*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @orc_init, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.orc_entry* null, %struct.orc_entry** %2, align 8
  br label %117

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store %struct.orc_entry* @null_orc_entry, %struct.orc_entry** %2, align 8
  br label %117

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @LOOKUP_START_IP, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %95

18:                                               ; preds = %14
  %19 = load i64, i64* %3, align 8
  %20 = load i64, i64* @LOOKUP_STOP_IP, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %95

22:                                               ; preds = %18
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @LOOKUP_START_IP, align 8
  %25 = sub i64 %23, %24
  %26 = load i64, i64* @LOOKUP_BLOCK_SIZE, align 8
  %27 = udiv i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @lookup_num_blocks, align 4
  %31 = sub nsw i32 %30, 1
  %32 = icmp uge i32 %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @lookup_num_blocks, align 4
  %39 = load i64, i64* %3, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = ptrtoint i8* %40 to i32
  %42 = call i32 (i8*, i32, i32, i32, ...) @orc_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38, i32 %41)
  store %struct.orc_entry* null, %struct.orc_entry** %2, align 8
  br label %117

43:                                               ; preds = %22
  %44 = load i32*, i32** @orc_lookup, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  %49 = load i32*, i32** @orc_lookup, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load i64, i64* @__start_orc_unwind, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load i64, i64* @__stop_orc_unwind, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %43
  %63 = load i64, i64* @__start_orc_unwind, align 8
  %64 = load i32, i32* %6, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i64, i64* @__stop_orc_unwind, align 8
  %68 = icmp sgt i64 %66, %67
  br label %69

69:                                               ; preds = %62, %43
  %70 = phi i1 [ true, %43 ], [ %68, %62 ]
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @lookup_num_blocks, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i64, i64* %3, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 (i8*, i32, i32, i32, ...) @orc_warn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %77, i32 %78, i8* %80)
  store %struct.orc_entry* null, %struct.orc_entry** %2, align 8
  br label %117

82:                                               ; preds = %69
  %83 = load i32, i32* @__start_orc_unwind_ip, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add i32 %83, %84
  %86 = load i64, i64* @__start_orc_unwind, align 8
  %87 = load i32, i32* %5, align 4
  %88 = zext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %5, align 4
  %92 = sub i32 %90, %91
  %93 = load i64, i64* %3, align 8
  %94 = call %struct.orc_entry* @__orc_find(i32 %85, i64 %89, i32 %92, i64 %93)
  store %struct.orc_entry* %94, %struct.orc_entry** %2, align 8
  br label %117

95:                                               ; preds = %18, %14
  %96 = load i64, i64* %3, align 8
  %97 = call i64 @init_kernel_text(i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load i32, i32* @__start_orc_unwind_ip, align 4
  %101 = load i64, i64* @__start_orc_unwind, align 8
  %102 = load i32, i32* @__stop_orc_unwind_ip, align 4
  %103 = load i32, i32* @__start_orc_unwind_ip, align 4
  %104 = sub i32 %102, %103
  %105 = load i64, i64* %3, align 8
  %106 = call %struct.orc_entry* @__orc_find(i32 %100, i64 %101, i32 %104, i64 %105)
  store %struct.orc_entry* %106, %struct.orc_entry** %2, align 8
  br label %117

107:                                              ; preds = %95
  %108 = load i64, i64* %3, align 8
  %109 = call %struct.orc_entry* @orc_module_find(i64 %108)
  store %struct.orc_entry* %109, %struct.orc_entry** @orc_find.orc, align 8
  %110 = load %struct.orc_entry*, %struct.orc_entry** @orc_find.orc, align 8
  %111 = icmp ne %struct.orc_entry* %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load %struct.orc_entry*, %struct.orc_entry** @orc_find.orc, align 8
  store %struct.orc_entry* %113, %struct.orc_entry** %2, align 8
  br label %117

114:                                              ; preds = %107
  %115 = load i64, i64* %3, align 8
  %116 = call %struct.orc_entry* @orc_ftrace_find(i64 %115)
  store %struct.orc_entry* %116, %struct.orc_entry** %2, align 8
  br label %117

117:                                              ; preds = %114, %112, %99, %82, %74, %36, %13, %9
  %118 = load %struct.orc_entry*, %struct.orc_entry** %2, align 8
  ret %struct.orc_entry* %118
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @orc_warn(i8*, i32, i32, i32, ...) #1

declare dso_local %struct.orc_entry* @__orc_find(i32, i64, i32, i64) #1

declare dso_local i64 @init_kernel_text(i64) #1

declare dso_local %struct.orc_entry* @orc_module_find(i64) #1

declare dso_local %struct.orc_entry* @orc_ftrace_find(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
