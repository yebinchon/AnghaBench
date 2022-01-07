; ModuleID = '/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdiff_outf.c'
source_filename = "/home/carl/AnghaBench/git/extr_xdiff-interface.c_xdiff_outf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32 }
%struct.xdiff_emit_state = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_5__*, i32)* @xdiff_outf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdiff_outf(i8* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xdiff_emit_state*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.xdiff_emit_state*
  store %struct.xdiff_emit_state* %11, %struct.xdiff_emit_state** %8, align 8
  %12 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %13 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %107, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %110

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %28, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 10
  br i1 %40, label %41, label %57

41:                                               ; preds = %22
  %42 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %43 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @strbuf_add(%struct.TYPE_6__* %43, i8* %49, i32 %55)
  br label %107

57:                                               ; preds = %22
  %58 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %59 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %78, label %63

63:                                               ; preds = %57
  %64 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @consume_one(%struct.xdiff_emit_state* %64, i8* %70, i32 %76)
  br label %107

78:                                               ; preds = %57
  %79 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %80 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @strbuf_add(%struct.TYPE_6__* %80, i8* %86, i32 %92)
  %94 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %95 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %96 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %100 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @consume_one(%struct.xdiff_emit_state* %94, i8* %98, i32 %102)
  %104 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %105 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %104, i32 0, i32 0
  %106 = call i32 @strbuf_reset(%struct.TYPE_6__* %105)
  br label %107

107:                                              ; preds = %78, %63, %41
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %18

110:                                              ; preds = %18
  %111 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %112 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %110
  %117 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %118 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %119 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %123 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @consume_one(%struct.xdiff_emit_state* %117, i8* %121, i32 %125)
  %127 = load %struct.xdiff_emit_state*, %struct.xdiff_emit_state** %8, align 8
  %128 = getelementptr inbounds %struct.xdiff_emit_state, %struct.xdiff_emit_state* %127, i32 0, i32 0
  %129 = call i32 @strbuf_reset(%struct.TYPE_6__* %128)
  br label %130

130:                                              ; preds = %116, %110
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %16
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @strbuf_add(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @consume_one(%struct.xdiff_emit_state*, i8*, i32) #1

declare dso_local i32 @strbuf_reset(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
