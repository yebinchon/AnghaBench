; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_mem_avoid_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_mem_avoid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@boot_params = common dso_local global %struct.TYPE_6__* null, align 8
@mem_avoid = common dso_local global %struct.TYPE_5__* null, align 8
@MEM_AVOID_ZO_RANGE = common dso_local global i64 0, align 8
@MEM_AVOID_INITRD = common dso_local global i64 0, align 8
@MEM_AVOID_CMDLINE = common dso_local global i64 0, align 8
@MEM_AVOID_BOOTPARAMS = common dso_local global i64 0, align 8
@num_immovable_mem = common dso_local global i32 0, align 4
@PMD_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @mem_avoid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mem_avoid_init(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %19 = load i64, i64* @MEM_AVOID_ZO_RANGE, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %4, align 8
  %26 = sub i64 %24, %25
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %28 = load i64, i64* @MEM_AVOID_ZO_RANGE, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i64 %26, i64* %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %32 = load i64, i64* @MEM_AVOID_ZO_RANGE, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %37 = load i64, i64* @MEM_AVOID_ZO_RANGE, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @add_identity_map(i64 %35, i64 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 %45, 32
  store i32 %46, i32* %8, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = shl i32 %56, 32
  store i32 %57, i32* %9, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %9, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %67 = load i64, i64* @MEM_AVOID_INITRD, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  store i64 %65, i64* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %73 = load i64, i64* @MEM_AVOID_INITRD, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i64 %71, i64* %75, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = shl i32 %79, 32
  store i32 %80, i32* %10, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  store i8* %89, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %98, %3
  %91 = load i8*, i8** %12, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %91, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %90

99:                                               ; preds = %90
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %103 = load i64, i64* @MEM_AVOID_CMDLINE, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i64 %101, i64* %105, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %109 = load i64, i64* @MEM_AVOID_CMDLINE, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  store i64 %107, i64* %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %113 = load i64, i64* @MEM_AVOID_CMDLINE, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %118 = load i64, i64* @MEM_AVOID_CMDLINE, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @add_identity_map(i64 %116, i64 %121)
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @boot_params, align 8
  %124 = ptrtoint %struct.TYPE_6__* %123 to i64
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %126 = load i64, i64* @MEM_AVOID_BOOTPARAMS, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i64 %124, i64* %128, align 8
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %130 = load i64, i64* @MEM_AVOID_BOOTPARAMS, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i64 48, i64* %132, align 8
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %134 = load i64, i64* @MEM_AVOID_BOOTPARAMS, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mem_avoid, align 8
  %139 = load i64, i64* @MEM_AVOID_BOOTPARAMS, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @add_identity_map(i64 %137, i64 %142)
  %144 = call i32 (...) @handle_mem_options()
  %145 = call i32 (...) @count_immovable_mem_regions()
  store i32 %145, i32* @num_immovable_mem, align 4
  ret void
}

declare dso_local i32 @add_identity_map(i64, i64) #1

declare dso_local i32 @handle_mem_options(...) #1

declare dso_local i32 @count_immovable_mem_regions(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
