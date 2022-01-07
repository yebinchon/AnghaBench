; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_fastcgi.c_test_lib__handler__fastcgi_c.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/handler/extr_fastcgi.c_test_lib__handler__fastcgi_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"h2o/1.2.1-alpha1\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ctx = common dso_local global i32 0, align 4
@test_loop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"build-request\00", align 1
@test_build_request = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_lib__handler__fastcgi_c() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @h2o_config_init(%struct.TYPE_6__* %1)
  %5 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @h2o_iovec_init(i32 %5)
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %6, i32* %7, align 4
  %8 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @h2o_iovec_init(i32 %8)
  %10 = call i32* @h2o_config_register_host(%struct.TYPE_6__* %1, i32 %9, i32 65535)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32* @h2o_config_register_path(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32* %12, i32** %3, align 8
  %13 = load i32, i32* @test_loop, align 4
  %14 = call i32 @h2o_context_init(i32* @ctx, i32 %13, %struct.TYPE_6__* %1)
  %15 = load i32, i32* @test_build_request, align 4
  %16 = call i32 @subtest(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = call i32 @h2o_context_dispose(i32* @ctx)
  %18 = call i32 @h2o_config_dispose(%struct.TYPE_6__* %1)
  ret void
}

declare dso_local i32 @h2o_config_init(%struct.TYPE_6__*) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32* @h2o_config_register_host(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @h2o_config_register_path(i32*, i8*, i32) #1

declare dso_local i32 @h2o_context_init(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @subtest(i8*, i32) #1

declare dso_local i32 @h2o_context_dispose(i32*) #1

declare dso_local i32 @h2o_config_dispose(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
