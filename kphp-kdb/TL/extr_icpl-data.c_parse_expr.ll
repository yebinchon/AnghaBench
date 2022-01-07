; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_icpl-data.c_parse_expr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_icpl-data.c_parse_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"closing bracket wasn't found\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unexpected closing bracket\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unexpected lt (%d) at pos %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*, i32, i32**)* @parse_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_expr(i8* %0, %struct.TYPE_3__* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32**, i32*** %9, align 8
  store i32* null, i32** %15, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %162, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %165

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %22 = load i32, i32* %10, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %150 [
    i32 129, label %27
    i32 132, label %88
    i32 131, label %97
    i32 130, label %115
    i32 128, label %133
    i32 133, label %146
  ]

27:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %54, %27
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i1 [ false, %30 ], [ %36, %33 ]
  br i1 %38, label %39, label %57

39:                                               ; preds = %37
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %52 [
    i32 129, label %46
    i32 132, label %49
  ]

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %12, align 4
  br label %53

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %49, %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %30

57:                                               ; preds = %37
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load i8*, i8** %6, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @icpl_failf(i8* %61, i64 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 %68, i32* %5, align 4
  br label %168

69:                                               ; preds = %57
  %70 = load i8*, i8** %6, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %74
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 2
  %79 = sub nsw i32 %76, %78
  %80 = call i32 @parse_expr(i8* %70, %struct.TYPE_3__* %75, i32 %79, i32** %13)
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  store i32 -1, i32* %5, align 4
  br label %168

83:                                               ; preds = %69
  %84 = load i32*, i32** %14, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i32* @cell_new_node(i32* %84, i32* %85)
  store i32* %86, i32** %14, align 8
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %10, align 4
  br label %161

88:                                               ; preds = %20
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @icpl_failf(i8* %89, i64 %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 %96, i32* %5, align 4
  br label %168

97:                                               ; preds = %20
  %98 = load i32*, i32** %14, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8, i8* %99, i64 %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32* @cell_new_combinator(i8* %106, i32 %112)
  %114 = call i32* @cell_new_node(i32* %98, i32* %113)
  store i32* %114, i32** %14, align 8
  br label %161

115:                                              ; preds = %20
  %116 = load i32*, i32** %14, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i8, i8* %117, i64 %123
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32* @cell_new_nat(i8* %124, i32 %130)
  %132 = call i32* @cell_new_node(i32* %116, i32* %131)
  store i32* %132, i32** %14, align 8
  br label %161

133:                                              ; preds = %20
  %134 = load i32*, i32** %14, align 8
  %135 = load i8*, i8** %6, align 8
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i8, i8* %135, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = call i32* @cell_new_variable(i8 signext %143)
  %145 = call i32* @cell_new_node(i32* %134, i32* %144)
  store i32* %145, i32** %14, align 8
  br label %161

146:                                              ; preds = %20
  %147 = load i32*, i32** %14, align 8
  %148 = call i32* (...) @cell_new_any()
  %149 = call i32* @cell_new_node(i32* %147, i32* %148)
  store i32* %149, i32** %14, align 8
  br label %161

150:                                              ; preds = %20
  %151 = load i32, i32* @stderr, align 4
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %10, align 4
  %159 = call i32 @fprintf(i32 %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %157, i32 %158)
  %160 = call i32 @assert(i32 0)
  br label %161

161:                                              ; preds = %150, %146, %133, %115, %97, %83
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %10, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %10, align 4
  br label %16

165:                                              ; preds = %16
  %166 = load i32*, i32** %14, align 8
  %167 = load i32**, i32*** %9, align 8
  store i32* %166, i32** %167, align 8
  store i32 0, i32* %5, align 4
  br label %168

168:                                              ; preds = %165, %88, %82, %60
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @icpl_failf(i8*, i64, i8*) #1

declare dso_local i32* @cell_new_node(i32*, i32*) #1

declare dso_local i32* @cell_new_combinator(i8*, i32) #1

declare dso_local i32* @cell_new_nat(i8*, i32) #1

declare dso_local i32* @cell_new_variable(i8 signext) #1

declare dso_local i32* @cell_new_any(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
