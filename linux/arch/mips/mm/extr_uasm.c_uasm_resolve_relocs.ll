; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_resolve_relocs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_uasm.c_uasm_resolve_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uasm_reloc = type { i64 }
%struct.uasm_label = type { i64 }

@UASM_LABEL_INVALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uasm_resolve_relocs(%struct.uasm_reloc* %0, %struct.uasm_label* %1) #0 {
  %3 = alloca %struct.uasm_reloc*, align 8
  %4 = alloca %struct.uasm_label*, align 8
  %5 = alloca %struct.uasm_label*, align 8
  store %struct.uasm_reloc* %0, %struct.uasm_reloc** %3, align 8
  store %struct.uasm_label* %1, %struct.uasm_label** %4, align 8
  br label %6

6:                                                ; preds = %37, %2
  %7 = load %struct.uasm_reloc*, %struct.uasm_reloc** %3, align 8
  %8 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UASM_LABEL_INVALID, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %6
  %13 = load %struct.uasm_label*, %struct.uasm_label** %4, align 8
  store %struct.uasm_label* %13, %struct.uasm_label** %5, align 8
  br label %14

14:                                               ; preds = %33, %12
  %15 = load %struct.uasm_label*, %struct.uasm_label** %5, align 8
  %16 = getelementptr inbounds %struct.uasm_label, %struct.uasm_label* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UASM_LABEL_INVALID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.uasm_reloc*, %struct.uasm_reloc** %3, align 8
  %22 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.uasm_label*, %struct.uasm_label** %5, align 8
  %25 = getelementptr inbounds %struct.uasm_label, %struct.uasm_label* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.uasm_reloc*, %struct.uasm_reloc** %3, align 8
  %30 = load %struct.uasm_label*, %struct.uasm_label** %5, align 8
  %31 = call i32 @__resolve_relocs(%struct.uasm_reloc* %29, %struct.uasm_label* %30)
  br label %32

32:                                               ; preds = %28, %20
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.uasm_label*, %struct.uasm_label** %5, align 8
  %35 = getelementptr inbounds %struct.uasm_label, %struct.uasm_label* %34, i32 1
  store %struct.uasm_label* %35, %struct.uasm_label** %5, align 8
  br label %14

36:                                               ; preds = %14
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.uasm_reloc*, %struct.uasm_reloc** %3, align 8
  %39 = getelementptr inbounds %struct.uasm_reloc, %struct.uasm_reloc* %38, i32 1
  store %struct.uasm_reloc* %39, %struct.uasm_reloc** %3, align 8
  br label %6

40:                                               ; preds = %6
  ret void
}

declare dso_local i32 @__resolve_relocs(%struct.uasm_reloc*, %struct.uasm_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
