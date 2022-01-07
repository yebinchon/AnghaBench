; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/mm/extr_fault.c_fixup_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/mm/extr_fault.c_fixup_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64*, i32, i64* }
%struct.exception_table_entry = type { i32 }

@EFAULT = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i64 0, align 8
@PSW_B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fixup_exception(%struct.pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca %struct.exception_table_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.exception_table_entry* @search_exception_tables(i64 %10)
  store %struct.exception_table_entry* %11, %struct.exception_table_entry** %4, align 8
  %12 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %13 = icmp ne %struct.exception_table_entry* %12, null
  br i1 %13, label %14, label %86

14:                                               ; preds = %1
  %15 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %16 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %14
  %21 = load i64, i64* @EFAULT, align 8
  %22 = sub nsw i64 0, %21
  %23 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %24 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %23, i32 0, i32 2
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 8
  store i64 %22, i64* %26, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @parisc_acctyp(i32 0, i32 %29)
  %31 = load i64, i64* @VM_READ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %20
  %34 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 31
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %43 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %42, i32 0, i32 2
  %44 = load i64*, i64** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %33, %20
  br label %49

49:                                               ; preds = %48, %14
  %50 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %51 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %50, i32 0, i32 0
  %52 = ptrtoint i32* %51 to i64
  %53 = load %struct.exception_table_entry*, %struct.exception_table_entry** %4, align 8
  %54 = getelementptr inbounds %struct.exception_table_entry, %struct.exception_table_entry* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %52, %56
  %58 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %59 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  store i64 %57, i64* %61, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, -4
  store i64 %67, i64* %65, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 4
  %74 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  store i64 %73, i64* %77, align 8
  %78 = load i64, i64* @PSW_B, align 8
  %79 = xor i64 %78, -1
  %80 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 0
  %84 = load i64, i64* %83, align 8
  %85 = and i64 %84, %79
  store i64 %85, i64* %83, align 8
  store i32 1, i32* %2, align 4
  br label %87

86:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.exception_table_entry* @search_exception_tables(i64) #1

declare dso_local i64 @parisc_acctyp(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
