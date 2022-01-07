; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_casper.c_test_lookup.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_casper.c_test_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_lookup() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = call %struct.TYPE_7__* @h2o_http2_casper_create(i32 13, i32 6)
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %1, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %4 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @h2o_http2_casper_lookup(%struct.TYPE_7__* %3, i32 %4, i32 0)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @ok(i32 %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %10 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @h2o_http2_casper_lookup(%struct.TYPE_7__* %9, i32 %10, i32 1)
  %12 = icmp eq i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @ok(i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  %20 = zext i1 %19 to i32
  %21 = call i32 @ok(i32 %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %23 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @h2o_http2_casper_lookup(%struct.TYPE_7__* %22, i32 %23, i32 0)
  %25 = icmp eq i32 %24, 1
  %26 = zext i1 %25 to i32
  %27 = call i32 @ok(i32 %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %29 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @h2o_http2_casper_lookup(%struct.TYPE_7__* %28, i32 %29, i32 1)
  %31 = icmp eq i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %42 = call i32 @h2o_http2_casper_destroy(%struct.TYPE_7__* %41)
  ret void
}

declare dso_local %struct.TYPE_7__* @h2o_http2_casper_create(i32, i32) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_http2_casper_lookup(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_http2_casper_destroy(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
