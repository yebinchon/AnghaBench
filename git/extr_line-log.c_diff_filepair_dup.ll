; ModuleID = '/home/carl/AnghaBench/git/extr_line-log.c_diff_filepair_dup.c'
source_filename = "/home/carl/AnghaBench/git/extr_line-log.c_diff_filepair_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.diff_filepair* (%struct.diff_filepair*)* @diff_filepair_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.diff_filepair* @diff_filepair_dup(%struct.diff_filepair* %0) #0 {
  %2 = alloca %struct.diff_filepair*, align 8
  %3 = alloca %struct.diff_filepair*, align 8
  store %struct.diff_filepair* %0, %struct.diff_filepair** %2, align 8
  %4 = call %struct.diff_filepair* @xmalloc(i32 16)
  store %struct.diff_filepair* %4, %struct.diff_filepair** %3, align 8
  %5 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %6 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %9 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %8, i32 0, i32 1
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %9, align 8
  %10 = load %struct.diff_filepair*, %struct.diff_filepair** %2, align 8
  %11 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %14 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %13, i32 0, i32 0
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %14, align 8
  %15 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %16 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  %22 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.diff_filepair*, %struct.diff_filepair** %3, align 8
  ret %struct.diff_filepair* %27
}

declare dso_local %struct.diff_filepair* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
