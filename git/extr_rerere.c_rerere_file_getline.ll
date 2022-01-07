; ModuleID = '/home/carl/AnghaBench/git/extr_rerere.c_rerere_file_getline.c'
source_filename = "/home/carl/AnghaBench/git/extr_rerere.c_rerere_file_getline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rerere_io = type { i32 }
%struct.rerere_io_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, %struct.rerere_io*)* @rerere_file_getline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rerere_file_getline(%struct.strbuf* %0, %struct.rerere_io* %1) #0 {
  %3 = alloca %struct.strbuf*, align 8
  %4 = alloca %struct.rerere_io*, align 8
  %5 = alloca %struct.rerere_io_file*, align 8
  store %struct.strbuf* %0, %struct.strbuf** %3, align 8
  store %struct.rerere_io* %1, %struct.rerere_io** %4, align 8
  %6 = load %struct.rerere_io*, %struct.rerere_io** %4, align 8
  %7 = bitcast %struct.rerere_io* %6 to %struct.rerere_io_file*
  store %struct.rerere_io_file* %7, %struct.rerere_io_file** %5, align 8
  %8 = load %struct.strbuf*, %struct.strbuf** %3, align 8
  %9 = load %struct.rerere_io_file*, %struct.rerere_io_file** %5, align 8
  %10 = getelementptr inbounds %struct.rerere_io_file, %struct.rerere_io_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @strbuf_getwholeline(%struct.strbuf* %8, i32 %11, i8 signext 10)
  ret i32 %12
}

declare dso_local i32 @strbuf_getwholeline(%struct.strbuf*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
