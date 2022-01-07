; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_emitter_write_cb.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_prof_log.c_prof_emitter_write_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prof_emitter_cb_arg_s = type { i32, i32 }

@prof_log_dummy = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @prof_emitter_write_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_emitter_write_cb(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.prof_emitter_cb_arg_s*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.prof_emitter_cb_arg_s*
  store %struct.prof_emitter_cb_arg_s* %8, %struct.prof_emitter_cb_arg_s** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = load %struct.prof_emitter_cb_arg_s*, %struct.prof_emitter_cb_arg_s** %5, align 8
  %12 = getelementptr inbounds %struct.prof_emitter_cb_arg_s, %struct.prof_emitter_cb_arg_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @malloc_write_fd(i32 %13, i8* %14, i64 %15)
  %17 = load %struct.prof_emitter_cb_arg_s*, %struct.prof_emitter_cb_arg_s** %5, align 8
  %18 = getelementptr inbounds %struct.prof_emitter_cb_arg_s, %struct.prof_emitter_cb_arg_s* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @malloc_write_fd(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
