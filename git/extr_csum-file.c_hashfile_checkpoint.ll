; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.c_hashfile_checkpoint.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.c_hashfile_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32, i32 }
%struct.hashfile_checkpoint = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashfile_checkpoint(%struct.hashfile* %0, %struct.hashfile_checkpoint* %1) #0 {
  %3 = alloca %struct.hashfile*, align 8
  %4 = alloca %struct.hashfile_checkpoint*, align 8
  store %struct.hashfile* %0, %struct.hashfile** %3, align 8
  store %struct.hashfile_checkpoint* %1, %struct.hashfile_checkpoint** %4, align 8
  %5 = load %struct.hashfile*, %struct.hashfile** %3, align 8
  %6 = call i32 @hashflush(%struct.hashfile* %5)
  %7 = load %struct.hashfile*, %struct.hashfile** %3, align 8
  %8 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.hashfile_checkpoint*, %struct.hashfile_checkpoint** %4, align 8
  %11 = getelementptr inbounds %struct.hashfile_checkpoint, %struct.hashfile_checkpoint* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.hashfile*, %struct.hashfile** %3, align 8
  %13 = getelementptr inbounds %struct.hashfile, %struct.hashfile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.hashfile_checkpoint*, %struct.hashfile_checkpoint** %4, align 8
  %16 = getelementptr inbounds %struct.hashfile_checkpoint, %struct.hashfile_checkpoint* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  ret void
}

declare dso_local i32 @hashflush(%struct.hashfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
