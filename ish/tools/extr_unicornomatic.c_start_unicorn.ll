; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_start_unicorn.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_start_unicorn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_state = type { i32, i32, i32, i32 }
%struct.mem = type { i32 }
%struct.pt_entry = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@UC_ARCH_X86 = common dso_local global i32 0, align 4
@UC_MODE_32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"uc_open\00", align 1
@UC_X86_REG_ESP = common dso_local global i32 0, align 4
@UC_X86_REG_EIP = common dso_local global i32 0, align 4
@UC_X86_REG_EFLAGS = common dso_local global i32 0, align 4
@UC_X86_REG_FPCW = common dso_local global i32 0, align 4
@MEM_PAGES = common dso_local global i32 0, align 4
@UC_PROT_READ = common dso_local global i32 0, align 4
@UC_PROT_EXEC = common dso_local global i32 0, align 4
@P_WRITE = common dso_local global i32 0, align 4
@UC_PROT_WRITE = common dso_local global i32 0, align 4
@PAGE_BITS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"uc_mem_map\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"uc_mem_write\00", align 1
@UC_HOOK_INTR = common dso_local global i32 0, align 4
@uc_interrupt_callback = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"uc_hook_add\00", align 1
@UC_HOOK_MEM_UNMAPPED = common dso_local global i32 0, align 4
@uc_unmapped_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @start_unicorn(%struct.cpu_state* %0, %struct.mem* %1) #0 {
  %3 = alloca %struct.cpu_state*, align 8
  %4 = alloca %struct.mem*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pt_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.cpu_state* %0, %struct.cpu_state** %3, align 8
  store %struct.mem* %1, %struct.mem** %4, align 8
  %12 = load i32, i32* @UC_ARCH_X86, align 4
  %13 = load i32, i32* @UC_MODE_32, align 4
  %14 = call i32 @uc_open(i32 %12, i32 %13, i32** %5)
  %15 = call i32 @uc_trycall(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @UC_X86_REG_ESP, align 4
  %18 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %19 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @uc_setreg(i32* %16, i32 %17, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @UC_X86_REG_EIP, align 4
  %24 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %25 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @uc_setreg(i32* %22, i32 %23, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @UC_X86_REG_EFLAGS, align 4
  %30 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %31 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @uc_setreg(i32* %28, i32 %29, i32 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = load i32, i32* @UC_X86_REG_FPCW, align 4
  %36 = load %struct.cpu_state*, %struct.cpu_state** %3, align 8
  %37 = getelementptr inbounds %struct.cpu_state, %struct.cpu_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @uc_setreg(i32* %34, i32 %35, i32 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %91, %2
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MEM_PAGES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %94

44:                                               ; preds = %40
  %45 = load %struct.mem*, %struct.mem** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call %struct.pt_entry* @mem_pt(%struct.mem* %45, i32 %46)
  store %struct.pt_entry* %47, %struct.pt_entry** %7, align 8
  %48 = load %struct.pt_entry*, %struct.pt_entry** %7, align 8
  %49 = icmp eq %struct.pt_entry* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %91

51:                                               ; preds = %44
  %52 = load i32, i32* @UC_PROT_READ, align 4
  %53 = load i32, i32* @UC_PROT_EXEC, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %8, align 4
  %55 = load %struct.pt_entry*, %struct.pt_entry** %7, align 8
  %56 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @P_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @UC_PROT_WRITE, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %51
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @PAGE_BITS, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load %struct.pt_entry*, %struct.pt_entry** %7, align 8
  %70 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.pt_entry*, %struct.pt_entry** %7, align 8
  %75 = getelementptr inbounds %struct.pt_entry, %struct.pt_entry* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr i8, i8* %73, i64 %77
  store i8* %78, i8** %10, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @PAGE_SIZE, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @uc_mem_map(i32* %79, i32 %80, i32 %81, i32 %82)
  %84 = call i32 @uc_trycall(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* @PAGE_SIZE, align 4
  %89 = call i32 @uc_mem_write(i32* %85, i32 %86, i8* %87, i32 %88)
  %90 = call i32 @uc_trycall(i32 %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %65, %50
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %40

94:                                               ; preds = %40
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @setup_gdt(i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @UC_HOOK_INTR, align 4
  %99 = load i32, i32* @uc_interrupt_callback, align 4
  %100 = call i32 @uc_hook_add(i32* %97, i32* %11, i32 %98, i32 %99, i32* null, i32 1, i32 0)
  %101 = call i32 @uc_trycall(i32 %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* @UC_HOOK_MEM_UNMAPPED, align 4
  %104 = load i32, i32* @uc_unmapped_callback, align 4
  %105 = call i32 @uc_hook_add(i32* %102, i32* %11, i32 %103, i32 %104, i32* null, i32 1, i32 0)
  %106 = call i32 @uc_trycall(i32 %105, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %107 = load i32*, i32** %5, align 8
  ret i32* %107
}

declare dso_local i32 @uc_trycall(i32, i8*) #1

declare dso_local i32 @uc_open(i32, i32, i32**) #1

declare dso_local i32 @uc_setreg(i32*, i32, i32) #1

declare dso_local %struct.pt_entry* @mem_pt(%struct.mem*, i32) #1

declare dso_local i32 @uc_mem_map(i32*, i32, i32, i32) #1

declare dso_local i32 @uc_mem_write(i32*, i32, i8*, i32) #1

declare dso_local i32 @setup_gdt(i32*) #1

declare dso_local i32 @uc_hook_add(i32*, i32*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
