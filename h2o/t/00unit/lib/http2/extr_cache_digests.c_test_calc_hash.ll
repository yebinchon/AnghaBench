; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_cache_digests.c_test_calc_hash.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_cache_digests.c_test_calc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"https://example.com/style.css\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"\22deadbeef\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_calc_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_calc_hash() #0 {
  %1 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @calc_hash(i32 %1, i32 %2)
  %4 = sext i32 %3 to i64
  %5 = icmp eq i64 %4, -4973688749961312160
  %6 = zext i1 %5 to i32
  %7 = call i32 @ok(i32 %6)
  %8 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @calc_hash(i32 %8, i32 %9)
  %11 = sext i32 %10 to i64
  %12 = icmp eq i64 %11, -6539592142127349033
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13)
  ret void
}

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @calc_hash(i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
