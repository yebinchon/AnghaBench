; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_pass_reply.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_pass_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_mruby_redis_command_context_t = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"_on_reply\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st_h2o_mruby_redis_command_context_t*, i32)* @pass_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_reply(%struct.st_h2o_mruby_redis_command_context_t* %0, i32 %1) #0 {
  %3 = alloca %struct.st_h2o_mruby_redis_command_context_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.st_h2o_mruby_redis_command_context_t* %0, %struct.st_h2o_mruby_redis_command_context_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %3, align 8
  %7 = getelementptr inbounds %struct.st_h2o_mruby_redis_command_context_t, %struct.st_h2o_mruby_redis_command_context_t* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %3, align 8
  %16 = getelementptr inbounds %struct.st_h2o_mruby_redis_command_context_t, %struct.st_h2o_mruby_redis_command_context_t* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @mrb_nil_p(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %3, align 8
  %23 = getelementptr inbounds %struct.st_h2o_mruby_redis_command_context_t, %struct.st_h2o_mruby_redis_command_context_t* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @mrb_funcall(i32* %21, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 1, i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @h2o_mruby_assert(i32* %28)
  br label %40

30:                                               ; preds = %2
  %31 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %3, align 8
  %32 = getelementptr inbounds %struct.st_h2o_mruby_redis_command_context_t, %struct.st_h2o_mruby_redis_command_context_t* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %3, align 8
  %37 = call i32 @detach_receiver(%struct.st_h2o_mruby_redis_command_context_t* %36, i32 1)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @h2o_mruby_run_fiber(%struct.TYPE_8__* %35, i32 %37, i32 %38, i32* null)
  br label %40

40:                                               ; preds = %30, %20
  ret void
}

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @h2o_mruby_assert(i32*) #1

declare dso_local i32 @h2o_mruby_run_fiber(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @detach_receiver(%struct.st_h2o_mruby_redis_command_context_t*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
