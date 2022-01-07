; ModuleID = '/home/carl/AnghaBench/git/extr_midx.c_fill_included_packs_batch.c'
source_filename = "/home/carl/AnghaBench/git/extr_midx.c_fill_included_packs_batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.multi_pack_index = type { i64, i64, %struct.packed_git** }
%struct.packed_git = type { i64, i32, i32 }
%struct.repack_info = type { i64, i32, i32 }

@compare_by_mtime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.repository*, %struct.multi_pack_index*, i8*, i64)* @fill_included_packs_batch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_included_packs_batch(%struct.repository* %0, %struct.multi_pack_index* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.repository*, align 8
  %7 = alloca %struct.multi_pack_index*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.repack_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.packed_git*, align 8
  %17 = alloca i64, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store %struct.multi_pack_index* %1, %struct.multi_pack_index** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %18 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %19 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call %struct.repack_info* @xcalloc(i64 %20, i32 16)
  store %struct.repack_info* %21, %struct.repack_info** %13, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %53, %4
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %25 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %22
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.repack_info*, %struct.repack_info** %13, align 8
  %31 = load i64, i64* %10, align 8
  %32 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %30, i64 %31
  %33 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %32, i32 0, i32 0
  store i64 %29, i64* %33, align 8
  %34 = load %struct.repository*, %struct.repository** %6, align 8
  %35 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @prepare_midx_pack(%struct.repository* %34, %struct.multi_pack_index* %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %53

40:                                               ; preds = %28
  %41 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %42 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %41, i32 0, i32 2
  %43 = load %struct.packed_git**, %struct.packed_git*** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %43, i64 %44
  %46 = load %struct.packed_git*, %struct.packed_git** %45, align 8
  %47 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.repack_info*, %struct.repack_info** %13, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %49, i64 %50
  %52 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %40, %39
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %10, align 8
  br label %22

56:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %57

57:                                               ; preds = %78, %56
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i64, i64* %10, align 8
  %62 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %63 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br label %66

66:                                               ; preds = %60, %57
  %67 = phi i1 [ false, %57 ], [ %65, %60 ]
  br i1 %67, label %68, label %81

68:                                               ; preds = %66
  %69 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @nth_midxed_pack_int_id(%struct.multi_pack_index* %69, i64 %70)
  store i64 %71, i64* %14, align 8
  %72 = load %struct.repack_info*, %struct.repack_info** %13, align 8
  %73 = load i64, i64* %14, align 8
  %74 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %72, i64 %73
  %75 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %68
  %79 = load i64, i64* %10, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %10, align 8
  br label %57

81:                                               ; preds = %66
  %82 = load %struct.repack_info*, %struct.repack_info** %13, align 8
  %83 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %84 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @compare_by_mtime, align 4
  %87 = call i32 @QSORT(%struct.repack_info* %82, i64 %85, i32 %86)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %88

88:                                               ; preds = %157, %81
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %95 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %93, %96
  br label %98

98:                                               ; preds = %92, %88
  %99 = phi i1 [ false, %88 ], [ %97, %92 ]
  br i1 %99, label %100, label %160

100:                                              ; preds = %98
  %101 = load %struct.repack_info*, %struct.repack_info** %13, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %101, i64 %102
  %104 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %15, align 4
  %107 = load %struct.multi_pack_index*, %struct.multi_pack_index** %7, align 8
  %108 = getelementptr inbounds %struct.multi_pack_index, %struct.multi_pack_index* %107, i32 0, i32 2
  %109 = load %struct.packed_git**, %struct.packed_git*** %108, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.packed_git*, %struct.packed_git** %109, i64 %111
  %113 = load %struct.packed_git*, %struct.packed_git** %112, align 8
  store %struct.packed_git* %113, %struct.packed_git** %16, align 8
  %114 = load %struct.packed_git*, %struct.packed_git** %16, align 8
  %115 = icmp ne %struct.packed_git* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %100
  br label %157

117:                                              ; preds = %100
  %118 = load %struct.packed_git*, %struct.packed_git** %16, align 8
  %119 = call i64 @open_pack_index(%struct.packed_git* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load %struct.packed_git*, %struct.packed_git** %16, align 8
  %123 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %121, %117
  br label %157

127:                                              ; preds = %121
  %128 = load %struct.packed_git*, %struct.packed_git** %16, align 8
  %129 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.repack_info*, %struct.repack_info** %13, align 8
  %132 = load i64, i64* %10, align 8
  %133 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %131, i64 %132
  %134 = getelementptr inbounds %struct.repack_info, %struct.repack_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %130, %135
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %17, align 8
  %138 = load %struct.packed_git*, %struct.packed_git** %16, align 8
  %139 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %17, align 8
  %142 = udiv i64 %141, %140
  store i64 %142, i64* %17, align 8
  %143 = load i64, i64* %17, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp uge i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %127
  br label %157

147:                                              ; preds = %127
  %148 = load i64, i64* %11, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %11, align 8
  %150 = load i64, i64* %17, align 8
  %151 = load i64, i64* %12, align 8
  %152 = add i64 %151, %150
  store i64 %152, i64* %12, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 1, i8* %156, align 1
  br label %157

157:                                              ; preds = %147, %146, %126, %116
  %158 = load i64, i64* %10, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %10, align 8
  br label %88

160:                                              ; preds = %98
  %161 = load %struct.repack_info*, %struct.repack_info** %13, align 8
  %162 = call i32 @free(%struct.repack_info* %161)
  %163 = load i64, i64* %12, align 8
  %164 = load i64, i64* %9, align 8
  %165 = icmp ult i64 %163, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %160
  %167 = load i64, i64* %11, align 8
  %168 = icmp ult i64 %167, 2
  br i1 %168, label %169, label %170

169:                                              ; preds = %166, %160
  store i32 1, i32* %5, align 4
  br label %171

170:                                              ; preds = %166
  store i32 0, i32* %5, align 4
  br label %171

171:                                              ; preds = %170, %169
  %172 = load i32, i32* %5, align 4
  ret i32 %172
}

declare dso_local %struct.repack_info* @xcalloc(i64, i32) #1

declare dso_local i64 @prepare_midx_pack(%struct.repository*, %struct.multi_pack_index*, i64) #1

declare dso_local i64 @nth_midxed_pack_int_id(%struct.multi_pack_index*, i64) #1

declare dso_local i32 @QSORT(%struct.repack_info*, i64, i32) #1

declare dso_local i64 @open_pack_index(%struct.packed_git*) #1

declare dso_local i32 @free(%struct.repack_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
