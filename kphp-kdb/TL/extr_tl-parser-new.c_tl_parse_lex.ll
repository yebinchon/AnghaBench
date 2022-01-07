; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_lex.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_parse_lex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.tree = type { i32 }
%struct.parse = type { i32 }

@parse = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lex_none = common dso_local global i64 0, align 8
@lex_error = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tree* @tl_parse_lex(%struct.parse* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.parse*, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  %4 = load %struct.parse*, %struct.parse** %3, align 8
  %5 = call i32 @assert(%struct.parse* %4)
  %6 = load %struct.parse*, %struct.parse** %3, align 8
  %7 = getelementptr inbounds %struct.parse, %struct.parse* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @load_parse(i32 %8)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %11 = load i64, i64* @lex_none, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 (...) @parse_lex()
  br label %15

15:                                               ; preds = %13, %1
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @parse, i32 0, i32 0, i32 0), align 8
  %17 = load i64, i64* @lex_error, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.tree* null, %struct.tree** %2, align 8
  br label %22

20:                                               ; preds = %15
  %21 = call %struct.tree* (...) @parse_program()
  store %struct.tree* %21, %struct.tree** %2, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = load %struct.tree*, %struct.tree** %2, align 8
  ret %struct.tree* %23
}

declare dso_local i32 @assert(%struct.parse*) #1

declare dso_local i32 @load_parse(i32) #1

declare dso_local i32 @parse_lex(...) #1

declare dso_local %struct.tree* @parse_program(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
