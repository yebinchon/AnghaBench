; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_randomize.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-import-dump.c_randomize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@randomize.RB = internal global [16 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @randomize() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @O_RDONLY, align 4
  %3 = call i32 @open(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = call i32 @read(i32 %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @randomize.RB, i64 0, i64 0), i32 8)
  %6 = sext i32 %5 to i64
  %7 = icmp eq i64 %6, 8
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load i64, i64* bitcast ([16 x i8]* @randomize.RB to i64*), align 16
  %11 = call i32 @srand48(i64 %10)
  ret void
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @srand48(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
