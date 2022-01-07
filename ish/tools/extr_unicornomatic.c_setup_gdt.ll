; ModuleID = '/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_setup_gdt.c'
source_filename = "/home/carl/AnghaBench/ish/tools/extr_unicornomatic.c_setup_gdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_entry = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@GDT_ADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@UC_PROT_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"map gdt\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"write gdt\00", align 1
@UC_X86_REG_GDTR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"write gdtr\00", align 1
@UC_X86_REG_CS = common dso_local global i32 0, align 4
@UC_X86_REG_DS = common dso_local global i32 0, align 4
@UC_X86_REG_ES = common dso_local global i32 0, align 4
@UC_X86_REG_FS = common dso_local global i32 0, align 4
@UC_X86_REG_SS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @setup_gdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_gdt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [13 x %struct.gdt_entry], align 16
  %4 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %2, align 8
  %5 = bitcast [13 x %struct.gdt_entry]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 416, i1 false)
  %6 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %7 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %6, i32 0, i32 0
  store i32 65535, i32* %7, align 16
  %8 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %9 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %8, i32 0, i32 1
  store i32 15, i32* %9, align 4
  %10 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %11 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %10, i32 0, i32 2
  store i32 1, i32* %11, align 8
  %12 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %13 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %12, i32 0, i32 3
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %15 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %14, i32 0, i32 4
  store i32 15, i32* %15, align 16
  %16 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %17 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %16, i32 0, i32 5
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %19 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %18, i32 0, i32 6
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 2
  %21 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 1
  %22 = bitcast %struct.gdt_entry* %20 to i8*
  %23 = bitcast %struct.gdt_entry* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 %23, i64 32, i1 false)
  %24 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 2
  %25 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %24, i32 0, i32 4
  store i32 3, i32* %25, align 16
  %26 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 12
  %27 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 2
  %28 = bitcast %struct.gdt_entry* %26 to i8*
  %29 = bitcast %struct.gdt_entry* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %28, i8* align 16 %29, i64 32, i1 false)
  %30 = getelementptr inbounds [13 x %struct.gdt_entry], [13 x %struct.gdt_entry]* %3, i64 0, i64 12
  %31 = getelementptr inbounds %struct.gdt_entry, %struct.gdt_entry* %30, i32 0, i32 7
  store i32 3, i32* %31, align 4
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* @GDT_ADDR, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* @UC_PROT_READ, align 4
  %36 = call i32 @uc_mem_map(i32* %32, i32 %33, i32 %34, i32 %35)
  %37 = call i32 @uc_trycall(i32 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @GDT_ADDR, align 4
  %40 = bitcast [13 x %struct.gdt_entry]* %3 to %struct.gdt_entry**
  %41 = call i32 @uc_mem_write(i32* %38, i32 %39, %struct.gdt_entry** %40, i32 416)
  %42 = call i32 @uc_trycall(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i32 416, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %45 = load i32, i32* @GDT_ADDR, align 4
  store i32 %45, i32* %44, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @UC_X86_REG_GDTR, align 4
  %48 = call i32 @uc_reg_write(i32* %46, i32 %47, %struct.TYPE_3__* %4)
  %49 = call i32 @uc_trycall(i32 %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* @UC_X86_REG_CS, align 4
  %52 = call i32 @uc_setreg(i32* %50, i32 %51, i32 8)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @UC_X86_REG_DS, align 4
  %55 = call i32 @uc_setreg(i32* %53, i32 %54, i32 16)
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @UC_X86_REG_ES, align 4
  %58 = call i32 @uc_setreg(i32* %56, i32 %57, i32 16)
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @UC_X86_REG_FS, align 4
  %61 = call i32 @uc_setreg(i32* %59, i32 %60, i32 16)
  %62 = load i32*, i32** %2, align 8
  %63 = load i32, i32* @UC_X86_REG_SS, align 4
  %64 = call i32 @uc_setreg(i32* %62, i32 %63, i32 16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @uc_trycall(i32, i8*) #2

declare dso_local i32 @uc_mem_map(i32*, i32, i32, i32) #2

declare dso_local i32 @uc_mem_write(i32*, i32, %struct.gdt_entry**, i32) #2

declare dso_local i32 @uc_reg_write(i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i32 @uc_setreg(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
