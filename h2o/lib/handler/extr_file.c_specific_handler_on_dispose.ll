; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_file.c_specific_handler_on_dispose.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_file.c_specific_handler_on_dispose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_specific_file_handler_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @specific_handler_on_dispose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @specific_handler_on_dispose(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.st_h2o_specific_file_handler_t*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = bitcast i8* %5 to %struct.st_h2o_specific_file_handler_t*
  store %struct.st_h2o_specific_file_handler_t* %6, %struct.st_h2o_specific_file_handler_t** %3, align 8
  %7 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %3, align 8
  %8 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @free(i32 %10)
  %12 = load %struct.st_h2o_specific_file_handler_t*, %struct.st_h2o_specific_file_handler_t** %3, align 8
  %13 = getelementptr inbounds %struct.st_h2o_specific_file_handler_t, %struct.st_h2o_specific_file_handler_t* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @h2o_mem_release_shared(i32 %14)
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @h2o_mem_release_shared(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
