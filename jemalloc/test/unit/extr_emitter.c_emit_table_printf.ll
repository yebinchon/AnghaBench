; ModuleID = '/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_table_printf.c'
source_filename = "/home/carl/AnghaBench/jemalloc/test/unit/extr_emitter.c_emit_table_printf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Table note 1\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Table note 2 %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"with format string\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @emit_table_printf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_table_printf(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @emitter_begin(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 (i32*, i8*, ...) @emitter_table_printf(i32* %5, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 (i32*, i8*, ...) @emitter_table_printf(i32* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @emitter_end(i32* %9)
  ret void
}

declare dso_local i32 @emitter_begin(i32*) #1

declare dso_local i32 @emitter_table_printf(i32*, i8*, ...) #1

declare dso_local i32 @emitter_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
