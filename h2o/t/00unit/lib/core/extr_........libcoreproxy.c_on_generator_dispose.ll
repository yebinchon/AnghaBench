; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_on_generator_dispose.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/core/extr_........libcoreproxy.c_on_generator_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rp_generator_t = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @on_generator_dispose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_generator_dispose(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rp_generator_t*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.rp_generator_t*
  store %struct.rp_generator_t* %5, %struct.rp_generator_t** %3, align 8
  %6 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %7 = call i32 @do_close(%struct.rp_generator_t* %6)
  %8 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %9 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %14 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %13, i32 0, i32 1
  %15 = call i32 @h2o_buffer_dispose(i32** %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.rp_generator_t*, %struct.rp_generator_t** %3, align 8
  %18 = getelementptr inbounds %struct.rp_generator_t, %struct.rp_generator_t* %17, i32 0, i32 0
  %19 = call i32 @h2o_doublebuffer_dispose(i32* %18)
  ret void
}

declare dso_local i32 @do_close(%struct.rp_generator_t*) #1

declare dso_local i32 @h2o_buffer_dispose(i32**) #1

declare dso_local i32 @h2o_doublebuffer_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
