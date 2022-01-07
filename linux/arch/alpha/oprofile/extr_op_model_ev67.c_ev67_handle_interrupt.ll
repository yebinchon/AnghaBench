; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev67.c_ev67_handle_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/oprofile/extr_op_model_ev67.c_ev67_handle_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }
%struct.op_counter_config = type { i32 }
%union.anon = type { i64 }
%struct.anon = type { i32, i16 }

@PM_ITB_MISS = common dso_local global i32 0, align 4
@PM_LOAD_STORE = common dso_local global i32 0, align 4
@PM_REPLAY = common dso_local global i32 0, align 4
@PM_DTB_MISS = common dso_local global i32 0, align 4
@PM_UNALIGNED = common dso_local global i32 0, align 4
@PM_MISPREDICT = common dso_local global i32 0, align 4
@PM_STALLED = common dso_local global i32 0, align 4
@PM_TAKEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.pt_regs*, %struct.op_counter_config*)* @ev67_handle_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ev67_handle_interrupt(i64 %0, %struct.pt_regs* %1, %struct.op_counter_config* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.op_counter_config*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.anon, align 8
  store i64 %0, i64* %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  store %struct.op_counter_config* %2, %struct.op_counter_config** %6, align 8
  %12 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %13 = call i32 @user_mode(%struct.pt_regs* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = call i8* @wrperfmon(i32 9, i32 0)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = and i64 %19, 1
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %144

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = and i64 %24, -3
  store i64 %25, i64* %7, align 8
  %26 = call i8* @wrperfmon(i32 8, i32 0)
  %27 = ptrtoint i8* %26 to i64
  %28 = bitcast %union.anon* %11 to i64*
  store i64 %27, i64* %28, align 8
  %29 = bitcast %union.anon* %11 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 4
  %32 = lshr i16 %31, 9
  %33 = and i16 %32, 1
  %34 = zext i16 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %113

36:                                               ; preds = %23
  %37 = bitcast %union.anon* %11 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 4
  %40 = lshr i16 %39, 4
  %41 = and i16 %40, 15
  %42 = zext i16 %41 to i32
  switch i32 %42, label %97 [
    i32 9, label %43
    i32 11, label %43
    i32 13, label %43
    i32 0, label %63
    i32 2, label %82
    i32 3, label %82
    i32 6, label %82
    i32 5, label %89
    i32 1, label %96
    i32 4, label %96
    i32 7, label %96
    i32 8, label %96
    i32 10, label %96
    i32 12, label %96
    i32 14, label %96
    i32 15, label %96
  ]

43:                                               ; preds = %36, %36, %36
  %44 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %45 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %4, align 8
  %49 = call i32 @oprofile_add_pc(i64 %46, i32 %47, i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = and i64 %50, 32767
  %52 = icmp eq i64 %51, 581
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.op_counter_config*, %struct.op_counter_config** %6, align 8
  %60 = load i32, i32* @PM_ITB_MISS, align 4
  %61 = call i32 @op_add_pm(i64 %56, i32 %57, i64 %58, %struct.op_counter_config* %59, i32 %60)
  br label %62

62:                                               ; preds = %53, %43
  br label %144

63:                                               ; preds = %36
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.op_counter_config*, %struct.op_counter_config** %6, align 8
  %68 = bitcast %union.anon* %11 to %struct.anon*
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 4
  %71 = lshr i16 %70, 8
  %72 = and i16 %71, 1
  %73 = zext i16 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* @PM_LOAD_STORE, align 4
  br label %79

77:                                               ; preds = %63
  %78 = load i32, i32* @PM_REPLAY, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = call i32 @op_add_pm(i64 %64, i32 %65, i64 %66, %struct.op_counter_config* %67, i32 %80)
  br label %97

82:                                               ; preds = %36, %36, %36
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.op_counter_config*, %struct.op_counter_config** %6, align 8
  %87 = load i32, i32* @PM_DTB_MISS, align 4
  %88 = call i32 @op_add_pm(i64 %83, i32 %84, i64 %85, %struct.op_counter_config* %86, i32 %87)
  br label %97

89:                                               ; preds = %36
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i64, i64* %4, align 8
  %93 = load %struct.op_counter_config*, %struct.op_counter_config** %6, align 8
  %94 = load i32, i32* @PM_UNALIGNED, align 4
  %95 = call i32 @op_add_pm(i64 %90, i32 %91, i64 %92, %struct.op_counter_config* %93, i32 %94)
  br label %97

96:                                               ; preds = %36, %36, %36, %36, %36, %36, %36, %36
  br label %97

97:                                               ; preds = %36, %96, %89, %82, %79
  %98 = bitcast %union.anon* %11 to %struct.anon*
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 1
  %100 = load i16, i16* %99, align 4
  %101 = lshr i16 %100, 10
  %102 = and i16 %101, 1
  %103 = zext i16 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %97
  store i32 1, i32* %10, align 4
  %106 = load i64, i64* %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = load i64, i64* %4, align 8
  %109 = load %struct.op_counter_config*, %struct.op_counter_config** %6, align 8
  %110 = load i32, i32* @PM_MISPREDICT, align 4
  %111 = call i32 @op_add_pm(i64 %106, i32 %107, i64 %108, %struct.op_counter_config* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %97
  br label %113

113:                                              ; preds = %112, %23
  %114 = load i64, i64* %7, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i64, i64* %4, align 8
  %117 = call i32 @oprofile_add_pc(i64 %114, i32 %115, i64 %116)
  %118 = call i8* @wrperfmon(i32 5, i32 0)
  %119 = ptrtoint i8* %118 to i64
  store i64 %119, i64* %8, align 8
  %120 = load i64, i64* %8, align 8
  %121 = and i64 %120, 134217728
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %113
  %124 = load i64, i64* %7, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i64, i64* %4, align 8
  %127 = load %struct.op_counter_config*, %struct.op_counter_config** %6, align 8
  %128 = load i32, i32* @PM_STALLED, align 4
  %129 = call i32 @op_add_pm(i64 %124, i32 %125, i64 %126, %struct.op_counter_config* %127, i32 %128)
  br label %130

130:                                              ; preds = %123, %113
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %130
  %134 = load i64, i64* %8, align 8
  %135 = and i64 %134, 1
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i64, i64* %7, align 8
  %139 = load i32, i32* %9, align 4
  %140 = load i64, i64* %4, align 8
  %141 = load %struct.op_counter_config*, %struct.op_counter_config** %6, align 8
  %142 = load i32, i32* @PM_TAKEN, align 4
  %143 = call i32 @op_add_pm(i64 %138, i32 %139, i64 %140, %struct.op_counter_config* %141, i32 %142)
  br label %144

144:                                              ; preds = %22, %62, %137, %133, %130
  ret void
}

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i8* @wrperfmon(i32, i32) #1

declare dso_local i32 @oprofile_add_pc(i64, i32, i64) #1

declare dso_local i32 @op_add_pm(i64, i32, i64, %struct.op_counter_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
