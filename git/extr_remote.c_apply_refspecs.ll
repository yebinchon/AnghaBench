; ModuleID = '/home/carl/AnghaBench/git/extr_remote.c_apply_refspecs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote.c_apply_refspecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.refspec = type { i32 }
%struct.refspec_item = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @apply_refspecs(%struct.refspec* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.refspec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.refspec_item, align 8
  store %struct.refspec* %0, %struct.refspec** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = call i32 @memset(%struct.refspec_item* %6, i32 0, i32 16)
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %6, i32 0, i32 0
  store i8* %8, i8** %9, align 8
  %10 = load %struct.refspec*, %struct.refspec** %4, align 8
  %11 = call i64 @query_refspecs(%struct.refspec* %10, %struct.refspec_item* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %17

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.refspec_item, %struct.refspec_item* %6, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  br label %17

17:                                               ; preds = %14, %13
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

declare dso_local i32 @memset(%struct.refspec_item*, i32, i32) #1

declare dso_local i64 @query_refspecs(%struct.refspec*, %struct.refspec_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
