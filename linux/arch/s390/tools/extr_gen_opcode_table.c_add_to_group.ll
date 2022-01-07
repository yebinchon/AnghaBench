; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_add_to_group.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/tools/extr_gen_opcode_table.c_add_to_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gen_opcode = type { i32, %struct.insn_group* }
%struct.insn_group = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.insn = type { %struct.TYPE_2__*, i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gen_opcode*, %struct.insn*, i32)* @add_to_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_group(%struct.gen_opcode* %0, %struct.insn* %1, i32 %2) #0 {
  %4 = alloca %struct.gen_opcode*, align 8
  %5 = alloca %struct.insn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.insn_group*, align 8
  store %struct.gen_opcode* %0, %struct.gen_opcode** %4, align 8
  store %struct.insn* %1, %struct.insn** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %9 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %8, i32 0, i32 1
  %10 = load %struct.insn_group*, %struct.insn_group** %9, align 8
  %11 = icmp ne %struct.insn_group* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %14 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %13, i32 0, i32 1
  %15 = load %struct.insn_group*, %struct.insn_group** %14, align 8
  %16 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %17 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %15, i64 %20
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %12
  %24 = phi %struct.insn_group* [ %21, %12 ], [ null, %22 ]
  store %struct.insn_group* %24, %struct.insn_group** %7, align 8
  %25 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %26 = icmp ne %struct.insn_group* %25, null
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %29 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.insn*, %struct.insn** %5, align 8
  %32 = getelementptr inbounds %struct.insn, %struct.insn* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strncmp(i32 %30, i32 %33, i32 2)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %38 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36, %27
  %44 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %45 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %99

48:                                               ; preds = %36, %23
  %49 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %50 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %54 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %53, i32 0, i32 1
  %55 = load %struct.insn_group*, %struct.insn_group** %54, align 8
  %56 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %57 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 24
  %61 = trunc i64 %60 to i32
  %62 = call %struct.insn_group* @realloc(%struct.insn_group* %55, i32 %61)
  %63 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %64 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %63, i32 0, i32 1
  store %struct.insn_group* %62, %struct.insn_group** %64, align 8
  %65 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %66 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %65, i32 0, i32 1
  %67 = load %struct.insn_group*, %struct.insn_group** %66, align 8
  %68 = icmp ne %struct.insn_group* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %48
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  %71 = call i32 @exit(i32 %70) #3
  unreachable

72:                                               ; preds = %48
  %73 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %74 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %73, i32 0, i32 1
  %75 = load %struct.insn_group*, %struct.insn_group** %74, align 8
  %76 = load %struct.gen_opcode*, %struct.gen_opcode** %4, align 8
  %77 = getelementptr inbounds %struct.gen_opcode, %struct.gen_opcode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %75, i64 %80
  store %struct.insn_group* %81, %struct.insn_group** %7, align 8
  %82 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %83 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.insn*, %struct.insn** %5, align 8
  %86 = getelementptr inbounds %struct.insn, %struct.insn* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @memcpy(i32 %84, i32 %87, i32 2)
  %89 = load %struct.insn*, %struct.insn** %5, align 8
  %90 = getelementptr inbounds %struct.insn, %struct.insn* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %93 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %92, i32 0, i32 2
  store %struct.TYPE_2__* %91, %struct.TYPE_2__** %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %96 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.insn_group*, %struct.insn_group** %7, align 8
  %98 = getelementptr inbounds %struct.insn_group, %struct.insn_group* %97, i32 0, i32 0
  store i32 1, i32* %98, align 8
  br label %99

99:                                               ; preds = %72, %43
  ret void
}

declare dso_local i32 @strncmp(i32, i32, i32) #1

declare dso_local %struct.insn_group* @realloc(%struct.insn_group*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
