; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_backtrace.c_unwind_user_frame.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/oprofile/extr_backtrace.c_unwind_user_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stackframe = type { i64, i64, i32 }
%union.mips_instruction = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stackframe*, i32)* @unwind_user_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unwind_user_frame(%struct.stackframe* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stackframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stackframe, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.mips_instruction, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.stackframe* %0, %struct.stackframe** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %14 = bitcast %struct.stackframe* %6 to i8*
  %15 = bitcast %struct.stackframe* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %16 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %17 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %22 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %27 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %20, %2
  store i32 -9, i32* %3, align 4
  br label %157

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  br label %34

34:                                               ; preds = %91, %31
  %35 = load i64, i64* %9, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = add i64 %35, %37
  %39 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i64, i64* %8, align 8
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ true, %42 ], [ %48, %45 ]
  br label %51

51:                                               ; preds = %49, %34
  %52 = phi i1 [ false, %34 ], [ %50, %49 ]
  br i1 %52, label %53, label %94

53:                                               ; preds = %51
  %54 = load i64, i64* %9, align 8
  %55 = bitcast %union.mips_instruction* %10 to i64*
  %56 = call i64 @get_mem(i64 %54, i64* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 -11, i32* %3, align 4
  br label %157

59:                                               ; preds = %53
  %60 = call i64 @is_sp_move_ins(%union.mips_instruction* %10)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = bitcast %union.mips_instruction* %10 to %struct.TYPE_2__*
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %94

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %8, align 8
  br label %90

72:                                               ; preds = %59
  %73 = call i64 @is_ra_save_ins(%union.mips_instruction* %10)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = bitcast %union.mips_instruction* %10 to %struct.TYPE_2__*
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %94

82:                                               ; preds = %75
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %7, align 4
  br label %89

84:                                               ; preds = %72
  %85 = call i64 @is_end_of_function_marker(%union.mips_instruction* %10)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  br label %94

88:                                               ; preds = %84
  br label %89

89:                                               ; preds = %88, %82
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %9, align 8
  br label %34

94:                                               ; preds = %87, %81, %68, %51
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i64, i64* %8, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97, %94
  br label %148

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %106 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %107, %109
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  %113 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 2
  %117 = bitcast i32* %116 to i64*
  %118 = call i64 @get_mem(i64 %115, i64* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %104
  store i32 -13, i32* %3, align 4
  br label %157

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121, %101
  %123 = load i64, i64* %8, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %127 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %128, %129
  %131 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 1
  store i64 %130, i64* %131, align 8
  %132 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 1
  %135 = call i64 @get_mem(i64 %133, i64* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store i32 -14, i32* %3, align 4
  br label %157

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %122
  %140 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %143 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ugt i64 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %139
  store i32 -2, i32* %3, align 4
  br label %157

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %100
  %149 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %150 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.stackframe, %struct.stackframe* %6, i32 0, i32 0
  store i64 %152, i64* %153, align 8
  %154 = load %struct.stackframe*, %struct.stackframe** %4, align 8
  %155 = bitcast %struct.stackframe* %154 to i8*
  %156 = bitcast %struct.stackframe* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %155, i8* align 8 %156, i64 24, i1 false)
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %148, %146, %137, %120, %58, %30
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @get_mem(i64, i64*) #2

declare dso_local i64 @is_sp_move_ins(%union.mips_instruction*) #2

declare dso_local i64 @is_ra_save_ins(%union.mips_instruction*) #2

declare dso_local i64 @is_end_of_function_marker(%union.mips_instruction*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
