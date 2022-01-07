; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module-sections.c_module_emit_got_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_module-sections.c_module_emit_got_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mod_section }
%struct.mod_section = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.got_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @module_emit_got_entry(%struct.module* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mod_section*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.got_entry*, align 8
  %9 = alloca %struct.got_entry, align 4
  store %struct.module* %0, %struct.module** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.module*, %struct.module** %4, align 8
  %11 = getelementptr inbounds %struct.module, %struct.module* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.mod_section* %12, %struct.mod_section** %6, align 8
  %13 = load %struct.mod_section*, %struct.mod_section** %6, align 8
  %14 = getelementptr inbounds %struct.mod_section, %struct.mod_section* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.mod_section*, %struct.mod_section** %6, align 8
  %18 = call %struct.got_entry* @get_got_entry(i64 %16, %struct.mod_section* %17)
  store %struct.got_entry* %18, %struct.got_entry** %8, align 8
  %19 = load %struct.got_entry*, %struct.got_entry** %8, align 8
  %20 = icmp ne %struct.got_entry* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.got_entry*, %struct.got_entry** %8, align 8
  %23 = ptrtoint %struct.got_entry* %22 to i64
  store i64 %23, i64* %3, align 8
  br label %58

24:                                               ; preds = %2
  %25 = load %struct.mod_section*, %struct.mod_section** %6, align 8
  %26 = getelementptr inbounds %struct.mod_section, %struct.mod_section* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.got_entry*
  store %struct.got_entry* %30, %struct.got_entry** %8, align 8
  %31 = load %struct.got_entry*, %struct.got_entry** %8, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %31, i64 %33
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @emit_got_entry(i64 %35)
  %37 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %9, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = bitcast %struct.got_entry* %34 to i8*
  %39 = bitcast %struct.got_entry* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.mod_section*, %struct.mod_section** %6, align 8
  %41 = getelementptr inbounds %struct.mod_section, %struct.mod_section* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.mod_section*, %struct.mod_section** %6, align 8
  %45 = getelementptr inbounds %struct.mod_section, %struct.mod_section* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mod_section*, %struct.mod_section** %6, align 8
  %48 = getelementptr inbounds %struct.mod_section, %struct.mod_section* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.got_entry*, %struct.got_entry** %8, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.got_entry, %struct.got_entry* %53, i64 %55
  %57 = ptrtoint %struct.got_entry* %56 to i64
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %24, %21
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local %struct.got_entry* @get_got_entry(i64, %struct.mod_section*) #1

declare dso_local i32 @emit_got_entry(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
