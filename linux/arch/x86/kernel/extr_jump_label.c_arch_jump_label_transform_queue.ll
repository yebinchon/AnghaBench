; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_jump_label.c_arch_jump_label_transform_queue.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_jump_label.c_arch_jump_label_transform_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_poke_loc = type { i8*, i32, i8*, i32 }
%struct.jump_entry = type { i32 }
%union.jump_code_union = type { i32 }

@system_state = common dso_local global i64 0, align 8
@SYSTEM_BOOTING = common dso_local global i64 0, align 8
@tp_vec_nr = common dso_local global i64 0, align 8
@TP_VEC_MAX = common dso_local global i64 0, align 8
@tp_vec = common dso_local global %struct.text_poke_loc* null, align 8
@JUMP_LABEL_NOP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_jump_label_transform_queue(%struct.jump_entry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jump_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.text_poke_loc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.text_poke_loc*, align 8
  store %struct.jump_entry* %0, %struct.jump_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* @system_state, align 8
  %11 = load i64, i64* @SYSTEM_BOOTING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @arch_jump_label_transform(%struct.jump_entry* %14, i32 %15)
  store i32 1, i32* %3, align 4
  br label %70

17:                                               ; preds = %2
  %18 = load i64, i64* @tp_vec_nr, align 8
  %19 = load i64, i64* @TP_VEC_MAX, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %70

22:                                               ; preds = %17
  %23 = load %struct.text_poke_loc*, %struct.text_poke_loc** @tp_vec, align 8
  %24 = load i64, i64* @tp_vec_nr, align 8
  %25 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %23, i64 %24
  store %struct.text_poke_loc* %25, %struct.text_poke_loc** %6, align 8
  %26 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %27 = call i64 @jump_entry_code(%struct.jump_entry* %26)
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %7, align 8
  %29 = load i64, i64* @tp_vec_nr, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load i64, i64* @tp_vec_nr, align 8
  %33 = sub i64 %32, 1
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.text_poke_loc*, %struct.text_poke_loc** @tp_vec, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %35, i64 %37
  store %struct.text_poke_loc* %38, %struct.text_poke_loc** %9, align 8
  %39 = load %struct.text_poke_loc*, %struct.text_poke_loc** %9, align 8
  %40 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ugt i8* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @WARN_ON_ONCE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %70

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.jump_entry*, %struct.jump_entry** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.text_poke_loc*, %struct.text_poke_loc** %6, align 8
  %53 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %52, i32 0, i32 3
  %54 = bitcast i32* %53 to %union.jump_code_union*
  %55 = call i32 @__jump_label_set_jump_code(%struct.jump_entry* %50, i32 %51, %union.jump_code_union* %54, i32 0)
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.text_poke_loc*, %struct.text_poke_loc** %6, align 8
  %58 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @JUMP_LABEL_NOP_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %59, i64 %61
  %63 = load %struct.text_poke_loc*, %struct.text_poke_loc** %6, align 8
  %64 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @JUMP_LABEL_NOP_SIZE, align 4
  %66 = load %struct.text_poke_loc*, %struct.text_poke_loc** %6, align 8
  %67 = getelementptr inbounds %struct.text_poke_loc, %struct.text_poke_loc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* @tp_vec_nr, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* @tp_vec_nr, align 8
  store i32 1, i32* %3, align 4
  br label %70

70:                                               ; preds = %49, %47, %21, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @arch_jump_label_transform(%struct.jump_entry*, i32) #1

declare dso_local i64 @jump_entry_code(%struct.jump_entry*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__jump_label_set_jump_code(%struct.jump_entry*, i32, %union.jump_code_union*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
