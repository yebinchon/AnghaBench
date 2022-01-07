; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_match_expr_eval.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_match_expr_eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i32 }
%struct.grep_expr = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.grep_expr*, i32 }
%struct.TYPE_5__ = type { %struct.grep_expr*, %struct.grep_expr* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Not a valid grep expression\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unexpected node type (internal error) %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.grep_expr*, i8*, i8*, i32, i32*, i32*, i32)* @match_expr_eval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_expr_eval(%struct.grep_opt* %0, %struct.grep_expr* %1, i8* %2, i8* %3, i32 %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.grep_opt*, align 8
  %11 = alloca %struct.grep_expr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__, align 4
  store %struct.grep_opt* %0, %struct.grep_opt** %10, align 8
  store %struct.grep_expr* %1, %struct.grep_expr** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %21 = icmp ne %struct.grep_expr* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %8
  %23 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %8
  %25 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %26 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %186 [
    i32 128, label %28
    i32 131, label %29
    i32 130, label %55
    i32 132, label %70
    i32 129, label %106
  ]

28:                                               ; preds = %24
  store i32 1, i32* %18, align 4
  br label %191

29:                                               ; preds = %24
  %30 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %31 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @match_one_pattern(i32 %33, i8* %34, i8* %35, i32 %36, %struct.TYPE_7__* %19, i32 0)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %29
  %41 = load i32*, i32** %15, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %40
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %15, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %44, %29
  br label %191

55:                                               ; preds = %24
  %56 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %57 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %58 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.grep_expr*, %struct.grep_expr** %59, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %16, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @match_expr_eval(%struct.grep_opt* %56, %struct.grep_expr* %60, i8* %61, i8* %62, i32 %63, i32* %64, i32* %65, i32 0)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %18, align 4
  br label %191

70:                                               ; preds = %24
  %71 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %72 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %73 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load %struct.grep_expr*, %struct.grep_expr** %75, align 8
  %77 = load i8*, i8** %12, align 8
  %78 = load i8*, i8** %13, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %15, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = call i32 @match_expr_eval(%struct.grep_opt* %71, %struct.grep_expr* %76, i8* %77, i8* %78, i32 %79, i32* %80, i32* %81, i32 0)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %70
  %86 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %87 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %85, %70
  %91 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %92 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %93 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.grep_expr*, %struct.grep_expr** %95, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* %14, align 4
  %100 = load i32*, i32** %15, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = call i32 @match_expr_eval(%struct.grep_opt* %91, %struct.grep_expr* %96, i8* %97, i8* %98, i32 %99, i32* %100, i32* %101, i32 0)
  %103 = load i32, i32* %18, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %90, %85
  br label %191

106:                                              ; preds = %24
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %145, label %109

109:                                              ; preds = %106
  %110 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %111 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %145, label %114

114:                                              ; preds = %109
  %115 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %116 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %117 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load %struct.grep_expr*, %struct.grep_expr** %119, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = load i32, i32* %14, align 4
  %124 = load i32*, i32** %15, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = call i32 @match_expr_eval(%struct.grep_opt* %115, %struct.grep_expr* %120, i8* %121, i8* %122, i32 %123, i32* %124, i32* %125, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %114
  %129 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %130 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %131 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load %struct.grep_expr*, %struct.grep_expr** %133, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* %14, align 4
  %138 = load i32*, i32** %15, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = call i32 @match_expr_eval(%struct.grep_opt* %129, %struct.grep_expr* %134, i8* %135, i8* %136, i32 %137, i32* %138, i32* %139, i32 0)
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %128, %114
  %143 = phi i1 [ true, %114 ], [ %141, %128 ]
  %144 = zext i1 %143 to i32
  store i32 %144, i32* %9, align 4
  br label %202

145:                                              ; preds = %109, %106
  %146 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %147 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %148 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load %struct.grep_expr*, %struct.grep_expr** %150, align 8
  %152 = load i8*, i8** %12, align 8
  %153 = load i8*, i8** %13, align 8
  %154 = load i32, i32* %14, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = load i32*, i32** %16, align 8
  %157 = call i32 @match_expr_eval(%struct.grep_opt* %146, %struct.grep_expr* %151, i8* %152, i8* %153, i32 %154, i32* %155, i32* %156, i32 0)
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %17, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %170

160:                                              ; preds = %145
  %161 = load i32, i32* %18, align 4
  %162 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %163 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load %struct.grep_expr*, %struct.grep_expr** %165, align 8
  %167 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %168, %161
  store i32 %169, i32* %167, align 4
  br label %170

170:                                              ; preds = %160, %145
  %171 = load %struct.grep_opt*, %struct.grep_opt** %10, align 8
  %172 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %173 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.grep_expr*, %struct.grep_expr** %175, align 8
  %177 = load i8*, i8** %12, align 8
  %178 = load i8*, i8** %13, align 8
  %179 = load i32, i32* %14, align 4
  %180 = load i32*, i32** %15, align 8
  %181 = load i32*, i32** %16, align 8
  %182 = load i32, i32* %17, align 4
  %183 = call i32 @match_expr_eval(%struct.grep_opt* %171, %struct.grep_expr* %176, i8* %177, i8* %178, i32 %179, i32* %180, i32* %181, i32 %182)
  %184 = load i32, i32* %18, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %18, align 4
  br label %191

186:                                              ; preds = %24
  %187 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %188 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i8*, ...) @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %186, %170, %105, %55, %54, %28
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i32, i32* %18, align 4
  %196 = load %struct.grep_expr*, %struct.grep_expr** %11, align 8
  %197 = getelementptr inbounds %struct.grep_expr, %struct.grep_expr* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %191
  %201 = load i32, i32* %18, align 4
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %200, %142
  %203 = load i32, i32* %9, align 4
  ret i32 %203
}

declare dso_local i32 @die(i8*, ...) #1

declare dso_local i32 @match_one_pattern(i32, i8*, i8*, i32, %struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
