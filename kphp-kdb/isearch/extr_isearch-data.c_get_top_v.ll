; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_get_top_v.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-data.c_get_top_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@buff = common dso_local global i64 0, align 8
@q_entry = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_BUFF = common dso_local global i32 0, align 4
@qr = common dso_local global i32 0, align 4
@STAT_ST = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"%d < %d < %d\0A\00", align 1
@q_rev = common dso_local global i32* null, align 8
@names_buff = common dso_local global i64 0, align 8
@names = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @get_top_v(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i64, i64* @buff, align 8
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  store i32 1, i32* %5, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %2, align 4
  %23 = icmp sgt i32 %22, 10000
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 10000, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = load i32, i32* @MAX_BUFF, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  br label %39

39:                                               ; preds = %191, %29
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %198

47:                                               ; preds = %45
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sle i32 0, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @qr, align 4
  %55 = icmp slt i32 %53, %54
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i1 [ false, %47 ], [ %55, %52 ]
  %58 = zext i1 %57 to i32
  %59 = call i32 @assert(i32 %58)
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %190, %56
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i32, i32* %2, align 4
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %79, %70
  %83 = phi i1 [ false, %70 ], [ %81, %79 ]
  br i1 %83, label %84, label %191

84:                                               ; preds = %82
  %85 = load i32, i32* %7, align 4
  %86 = icmp sle i32 0, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @STAT_ST, align 4
  %90 = load i32, i32* @qr, align 4
  %91 = add nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %112, label %93

93:                                               ; preds = %87, %84
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @STAT_ST, align 4
  %97 = load i32, i32* @qr, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0, i32 %95, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 0, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %93
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @STAT_ST, align 4
  %105 = load i32, i32* @qr, align 4
  %106 = add nsw i32 %104, %105
  %107 = icmp slt i32 %103, %106
  br label %108

108:                                              ; preds = %102, %93
  %109 = phi i1 [ false, %93 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  br label %112

112:                                              ; preds = %108, %87
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* @STAT_ST, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp sle i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %112
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* @qr, align 4
  %125 = load i32, i32* @STAT_ST, align 4
  %126 = add nsw i32 %124, %125
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %149, label %128

128:                                              ; preds = %122, %112
  %129 = load i32, i32* @stderr, align 4
  %130 = load i32, i32* @STAT_ST, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @qr, align 4
  %133 = load i32, i32* @STAT_ST, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %131, i32 %134)
  %136 = load i32, i32* @STAT_ST, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %128
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @qr, align 4
  %142 = load i32, i32* @STAT_ST, align 4
  %143 = add nsw i32 %141, %142
  %144 = icmp slt i32 %140, %143
  br label %145

145:                                              ; preds = %139, %128
  %146 = phi i1 [ false, %128 ], [ %144, %139 ]
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  br label %149

149:                                              ; preds = %145, %122
  %150 = load i32*, i32** @q_rev, align 8
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @STAT_ST, align 4
  %153 = sub nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %150, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %3, align 8
  %158 = load i32*, i32** %3, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  store i32 %156, i32* %163, align 4
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %182, label %166

166:                                              ; preds = %149
  %167 = load i64, i64* @names_buff, align 8
  %168 = load i64*, i64** @names, align 8
  %169 = load i32*, i32** %3, align 8
  %170 = load i32*, i32** %3, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %168, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %167, %178
  %180 = call i32 @black_list_check(i64 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %166, %149
  %183 = load i32, i32* %2, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %2, align 4
  br label %190

185:                                              ; preds = %166
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %185, %182
  br label %70

191:                                              ; preds = %82
  %192 = load %struct.TYPE_2__*, %struct.TYPE_2__** @q_entry, align 8
  %193 = load i32, i32* %4, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %4, align 4
  br label %39

198:                                              ; preds = %45
  %199 = load i32*, i32** %3, align 8
  ret i32* %199
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @black_list_check(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
