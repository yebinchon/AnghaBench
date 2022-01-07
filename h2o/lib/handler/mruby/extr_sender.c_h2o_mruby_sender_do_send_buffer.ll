; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_h2o_mruby_sender_do_send_buffer.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_sender.c_h2o_mruby_sender_do_send_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i64, i32 }

@H2O_SEND_STATE_FINAL = common dso_local global i32 0, align 4
@H2O_SEND_STATE_IN_PROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @h2o_mruby_sender_do_send_buffer(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, %struct.TYPE_19__** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_19__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_19__** %2, %struct.TYPE_19__*** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %21 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call { i64, i32 } @h2o_doublebuffer_prepare(%struct.TYPE_18__* %20, %struct.TYPE_19__** %21, i32 %26)
  %28 = bitcast %struct.TYPE_17__* %9 to { i64, i32 }*
  %29 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 0
  %30 = extractvalue { i64, i32 } %27, 0
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %28, i32 0, i32 1
  %32 = extractvalue { i64, i32 } %27, 1
  store i32 %32, i32* %31, align 8
  store i64 1, i64* %10, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %4
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %37, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %7, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %10, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* @H2O_SEND_STATE_FINAL, align 4
  store i32 %58, i32* %11, align 4
  br label %66

59:                                               ; preds = %44, %35, %4
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %76

64:                                               ; preds = %59
  %65 = load i32, i32* @H2O_SEND_STATE_IN_PROGRESS, align 4
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %64, %57
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @h2o_sendvec_init_raw(i32* %12, i32 %68, i64 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @h2o_mruby_sender_do_send(%struct.TYPE_16__* %72, i32* %12, i64 %73, i32 %74)
  br label %76

76:                                               ; preds = %66, %63
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local { i64, i32 } @h2o_doublebuffer_prepare(%struct.TYPE_18__*, %struct.TYPE_19__**, i32) #1

declare dso_local i32 @h2o_sendvec_init_raw(i32*, i32, i64) #1

declare dso_local i32 @h2o_mruby_sender_do_send(%struct.TYPE_16__*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
