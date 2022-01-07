; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_on_redis_command.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_redis.c_on_redis_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_mruby_redis_command_context_t = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.RClass = type { i32 }

@h2o_redis_error_connection = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"ConnectionError\00", align 1
@h2o_redis_error_protocol = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"ProtocolError\00", align 1
@h2o_redis_error_connect_timeout = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"ConnectTimeoutError\00", align 1
@h2o_redis_error_command_timeout = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"CommandTimeoutError\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"UnknownError\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i8*)* @on_redis_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_redis_command(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.st_h2o_mruby_redis_command_context_t*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.RClass*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.st_h2o_mruby_redis_command_context_t*
  store %struct.st_h2o_mruby_redis_command_context_t* %13, %struct.st_h2o_mruby_redis_command_context_t** %7, align 8
  %14 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %7, align 8
  %15 = getelementptr inbounds %struct.st_h2o_mruby_redis_command_context_t, %struct.st_h2o_mruby_redis_command_context_t* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = call i32 (...) @mrb_nil_value()
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @mrb_gc_arena_save(i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %3
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %94

32:                                               ; preds = %28
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %7, align 8
  %36 = getelementptr inbounds %struct.st_h2o_mruby_redis_command_context_t, %struct.st_h2o_mruby_redis_command_context_t* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @decode_redis_reply(i32* %33, i32* %34, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %81

40:                                               ; preds = %3
  store %struct.RClass* null, %struct.RClass** %11, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** @h2o_redis_error_connection, align 8
  %43 = icmp eq i8* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32*, i32** %8, align 8
  %46 = call %struct.RClass* @get_error_class(i32* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.RClass* %46, %struct.RClass** %11, align 8
  br label %74

47:                                               ; preds = %40
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** @h2o_redis_error_protocol, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32*, i32** %8, align 8
  %53 = call %struct.RClass* @get_error_class(i32* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store %struct.RClass* %53, %struct.RClass** %11, align 8
  br label %73

54:                                               ; preds = %47
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** @h2o_redis_error_connect_timeout, align 8
  %57 = icmp eq i8* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32*, i32** %8, align 8
  %60 = call %struct.RClass* @get_error_class(i32* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store %struct.RClass* %60, %struct.RClass** %11, align 8
  br label %72

61:                                               ; preds = %54
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** @h2o_redis_error_command_timeout, align 8
  %64 = icmp eq i8* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32*, i32** %8, align 8
  %67 = call %struct.RClass* @get_error_class(i32* %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store %struct.RClass* %67, %struct.RClass** %11, align 8
  br label %71

68:                                               ; preds = %61
  %69 = load i32*, i32** %8, align 8
  %70 = call %struct.RClass* @get_error_class(i32* %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  store %struct.RClass* %70, %struct.RClass** %11, align 8
  br label %71

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %71, %58
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %44
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.RClass*, %struct.RClass** %11, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = call i32 @mrb_exc_new(i32* %75, %struct.RClass* %76, i8* %77, i32 %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %74, %32
  %82 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %7, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @pass_reply(%struct.st_h2o_mruby_redis_command_context_t* %82, i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @mrb_gc_arena_restore(i32* %85, i32 %86)
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.st_h2o_mruby_redis_command_context_t*, %struct.st_h2o_mruby_redis_command_context_t** %7, align 8
  %90 = getelementptr inbounds %struct.st_h2o_mruby_redis_command_context_t, %struct.st_h2o_mruby_redis_command_context_t* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @mrb_gc_unregister(i32* %88, i32 %92)
  br label %94

94:                                               ; preds = %81, %31
  ret void
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i32 @decode_redis_reply(i32*, i32*, i32) #1

declare dso_local %struct.RClass* @get_error_class(i32*, i8*) #1

declare dso_local i32 @mrb_exc_new(i32*, %struct.RClass*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pass_reply(%struct.st_h2o_mruby_redis_command_context_t*, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

declare dso_local i32 @mrb_gc_unregister(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
