; ModuleID = '/home/carl/AnghaBench/jq/src/extr_compile.c_inst_free.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_compile.c_inst_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inst = type { %struct.TYPE_3__, i32, i64, i32, i32, %struct.inst* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@OP_HAS_CONSTANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inst*)* @inst_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @inst_free(%struct.inst* %0) #0 {
  %2 = alloca %struct.inst*, align 8
  store %struct.inst* %0, %struct.inst** %2, align 8
  %3 = load %struct.inst*, %struct.inst** %2, align 8
  %4 = getelementptr inbounds %struct.inst, %struct.inst* %3, i32 0, i32 5
  %5 = load %struct.inst*, %struct.inst** %4, align 8
  %6 = call i32 @jv_mem_free(%struct.inst* %5)
  %7 = load %struct.inst*, %struct.inst** %2, align 8
  %8 = getelementptr inbounds %struct.inst, %struct.inst* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @block_free(i32 %9)
  %11 = load %struct.inst*, %struct.inst** %2, align 8
  %12 = getelementptr inbounds %struct.inst, %struct.inst* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @block_free(i32 %13)
  %15 = load %struct.inst*, %struct.inst** %2, align 8
  %16 = getelementptr inbounds %struct.inst, %struct.inst* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.inst*, %struct.inst** %2, align 8
  %21 = getelementptr inbounds %struct.inst, %struct.inst* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @locfile_free(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.inst*, %struct.inst** %2, align 8
  %26 = getelementptr inbounds %struct.inst, %struct.inst* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_4__* @opcode_describe(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OP_HAS_CONSTANT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %24
  %35 = load %struct.inst*, %struct.inst** %2, align 8
  %36 = getelementptr inbounds %struct.inst, %struct.inst* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @jv_free(i32 %38)
  br label %40

40:                                               ; preds = %34, %24
  %41 = load %struct.inst*, %struct.inst** %2, align 8
  %42 = call i32 @jv_mem_free(%struct.inst* %41)
  ret void
}

declare dso_local i32 @jv_mem_free(%struct.inst*) #1

declare dso_local i32 @block_free(i32) #1

declare dso_local i32 @locfile_free(i64) #1

declare dso_local %struct.TYPE_4__* @opcode_describe(i32) #1

declare dso_local i32 @jv_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
