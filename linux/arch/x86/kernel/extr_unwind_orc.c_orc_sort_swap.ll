; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_orc_sort_swap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_unwind_orc.c_orc_sort_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orc_entry = type { i32 }

@cur_orc_table = common dso_local global %struct.orc_entry* null, align 8
@cur_orc_ip_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @orc_sort_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orc_sort_swap(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.orc_entry*, align 8
  %8 = alloca %struct.orc_entry*, align 8
  %9 = alloca %struct.orc_entry, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %11, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %13, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32*, i32** %11, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.orc_entry*, %struct.orc_entry** @cur_orc_table, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** @cur_orc_ip_table, align 8
  %38 = ptrtoint i32* %36 to i64
  %39 = ptrtoint i32* %37 to i64
  %40 = sub i64 %38, %39
  %41 = sdiv exact i64 %40, 4
  %42 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %35, i64 %41
  store %struct.orc_entry* %42, %struct.orc_entry** %7, align 8
  %43 = load %struct.orc_entry*, %struct.orc_entry** @cur_orc_table, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = load i32*, i32** @cur_orc_ip_table, align 8
  %46 = ptrtoint i32* %44 to i64
  %47 = ptrtoint i32* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = getelementptr inbounds %struct.orc_entry, %struct.orc_entry* %43, i64 %49
  store %struct.orc_entry* %50, %struct.orc_entry** %8, align 8
  %51 = load %struct.orc_entry*, %struct.orc_entry** %7, align 8
  %52 = bitcast %struct.orc_entry* %9 to i8*
  %53 = bitcast %struct.orc_entry* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.orc_entry*, %struct.orc_entry** %7, align 8
  %55 = load %struct.orc_entry*, %struct.orc_entry** %8, align 8
  %56 = bitcast %struct.orc_entry* %54 to i8*
  %57 = bitcast %struct.orc_entry* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 4, i1 false)
  %58 = load %struct.orc_entry*, %struct.orc_entry** %8, align 8
  %59 = bitcast %struct.orc_entry* %58 to i8*
  %60 = bitcast %struct.orc_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %59, i8* align 4 %60, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
