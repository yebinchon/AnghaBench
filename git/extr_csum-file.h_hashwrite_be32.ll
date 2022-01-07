; ModuleID = '/home/carl/AnghaBench/git/extr_csum-file.h_hashwrite_be32.c'
source_filename = "/home/carl/AnghaBench/git/extr_csum-file.h_hashwrite_be32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, i32)* @hashwrite_be32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashwrite_be32(%struct.hashfile* %0, i32 %1) #0 {
  %3 = alloca %struct.hashfile*, align 8
  %4 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @htonl(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load %struct.hashfile*, %struct.hashfile** %3, align 8
  %8 = call i32 @hashwrite(%struct.hashfile* %7, i32* %4, i32 4)
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
