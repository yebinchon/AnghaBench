; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_swstmt.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_stmt.c_swstmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { %struct.TYPE_22__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_19__**, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64 }
%struct.swtch = type { i32, i64, %struct.TYPE_24__*, i8*, i8*, i32, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64 }

@t = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"illegal type `%t' in switch expression\0A\00", align 1
@inttype = common dso_local global i32 0, align 4
@INDIR = common dso_local global i64 0, align 8
@REGISTER = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@Switch = common dso_local global i32 0, align 4
@SWSIZE = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@refinc = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"switch statement with no cases\0A\00", align 1
@codelist = common dso_local global %struct.TYPE_22__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @swstmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swstmt(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.swtch, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = call i32 (...) @gettok()
  store i32 %11, i32* @t, align 4
  %12 = call i32 @expect(i8 signext 40)
  %13 = call i32 @definept(i32* null)
  %14 = call %struct.TYPE_21__* @expr(i8 signext 41)
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %7, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @isint(i64 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %26 = load i32, i32* @inttype, align 4
  %27 = call %struct.TYPE_21__* @retype(%struct.TYPE_21__* %25, i32 %26)
  store %struct.TYPE_21__* %27, %struct.TYPE_21__** %7, align 8
  br label %28

28:                                               ; preds = %20, %3
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @promote(i64 %32)
  %34 = call %struct.TYPE_21__* @cast(%struct.TYPE_21__* %29, i32 %33)
  store %struct.TYPE_21__* %34, %struct.TYPE_21__** %7, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @generic(i32 %37)
  %39 = load i64, i64* @INDIR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %90

41:                                               ; preds = %28
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %44, i64 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @isaddrop(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %41
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %54, i64 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %90

66:                                               ; preds = %51
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %69, i64 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @isvolatile(i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %66
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %82, i64 0
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 6
  store %struct.TYPE_23__* %87, %struct.TYPE_23__** %88, align 8
  %89 = call i32 @walk(i32* null, i32 0, i32 0)
  br label %106

90:                                               ; preds = %66, %51, %41, %28
  %91 = load i32, i32* @REGISTER, align 4
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @level, align 4
  %96 = call %struct.TYPE_23__* @genident(i32 %91, i64 %94, i32 %95)
  %97 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 6
  store %struct.TYPE_23__* %96, %struct.TYPE_23__** %97, align 8
  %98 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 6
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %98, align 8
  %100 = call i32 @addlocal(%struct.TYPE_23__* %99)
  %101 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 6
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %101, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = call i32* @asgn(%struct.TYPE_23__* %102, %struct.TYPE_21__* %103)
  %105 = call i32 @walk(i32* %104, i32 0, i32 0)
  br label %106

106:                                              ; preds = %90, %79
  %107 = load i32, i32* @Switch, align 4
  %108 = call %struct.TYPE_22__* @code(i32 %107)
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %9, align 8
  %109 = load i32, i32* %5, align 4
  %110 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %111, align 8
  %112 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* @SWSIZE, align 4
  %114 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 5
  store i32 %113, i32* %114, align 8
  %115 = load i32, i32* @SWSIZE, align 4
  %116 = load i32, i32* @FUNC, align 4
  %117 = call i8* @newarray(i32 %115, i32 1, i32 %116)
  %118 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 4
  store i8* %117, i8** %118, align 8
  %119 = load i32, i32* @SWSIZE, align 4
  %120 = load i32, i32* @FUNC, align 4
  %121 = call i8* @newarray(i32 %119, i32 1, i32 %120)
  %122 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 3
  store i8* %121, i8** %122, align 8
  %123 = load double, double* @refinc, align 8
  %124 = fdiv double %123, 1.000000e+01
  store double %124, double* @refinc, align 8
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @statement(i32 %125, %struct.swtch* %8, i32 %126)
  %128 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 2
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %128, align 8
  %130 = icmp eq %struct.TYPE_24__* %129, null
  br i1 %130, label %131, label %143

131:                                              ; preds = %106
  %132 = load i32, i32* %5, align 4
  %133 = call %struct.TYPE_24__* @findlabel(i32 %132)
  %134 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 2
  store %struct.TYPE_24__* %133, %struct.TYPE_24__** %134, align 8
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @definelab(i32 %135)
  %137 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = call i32 @warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %131
  br label %143

143:                                              ; preds = %142, %106
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  %146 = call %struct.TYPE_24__* @findlabel(i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  %153 = call i32 @definelab(i32 %152)
  br label %154

154:                                              ; preds = %150, %143
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** @codelist, align 8
  store %struct.TYPE_22__* %155, %struct.TYPE_22__** %10, align 8
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %157, align 8
  store %struct.TYPE_22__* %158, %struct.TYPE_22__** @codelist, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %160, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** @codelist, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %162, align 8
  %163 = getelementptr inbounds %struct.swtch, %struct.swtch* %8, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %154
  %167 = call i32 @swgen(%struct.swtch* %8)
  br label %168

168:                                              ; preds = %166, %154
  %169 = load i32, i32* %5, align 4
  %170 = call i32 @branch(i32 %169)
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** @codelist, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  store %struct.TYPE_22__* %171, %struct.TYPE_22__** %175, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %177, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** @codelist, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  store %struct.TYPE_20__* %178, %struct.TYPE_20__** %180, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %181, %struct.TYPE_22__** @codelist, align 8
  ret void
}

declare dso_local i32 @gettok(...) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @definept(i32*) #1

declare dso_local %struct.TYPE_21__* @expr(i8 signext) #1

declare dso_local i32 @isint(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local %struct.TYPE_21__* @retype(%struct.TYPE_21__*, i32) #1

declare dso_local %struct.TYPE_21__* @cast(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @promote(i64) #1

declare dso_local i64 @generic(i32) #1

declare dso_local i64 @isaddrop(i32) #1

declare dso_local i32 @isvolatile(i64) #1

declare dso_local i32 @walk(i32*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @genident(i32, i64, i32) #1

declare dso_local i32 @addlocal(%struct.TYPE_23__*) #1

declare dso_local i32* @asgn(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_22__* @code(i32) #1

declare dso_local i8* @newarray(i32, i32, i32) #1

declare dso_local i32 @statement(i32, %struct.swtch*, i32) #1

declare dso_local %struct.TYPE_24__* @findlabel(i32) #1

declare dso_local i32 @definelab(i32) #1

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @swgen(%struct.swtch*) #1

declare dso_local i32 @branch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
