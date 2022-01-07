; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_fetch.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.discovery = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"git-upload-pack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ref**)* @fetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch(i32 %0, %struct.ref** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ref**, align 8
  %6 = alloca %struct.discovery*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.ref** %1, %struct.ref*** %5, align 8
  %7 = call %struct.discovery* @discover_refs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.discovery* %7, %struct.discovery** %6, align 8
  %8 = load %struct.discovery*, %struct.discovery** %6, align 8
  %9 = getelementptr inbounds %struct.discovery, %struct.discovery* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.discovery*, %struct.discovery** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.ref**, %struct.ref*** %5, align 8
  %16 = call i32 @fetch_git(%struct.discovery* %13, i32 %14, %struct.ref** %15)
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.ref**, %struct.ref*** %5, align 8
  %20 = call i32 @fetch_dumb(i32 %18, %struct.ref** %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.discovery* @discover_refs(i8*, i32) #1

declare dso_local i32 @fetch_git(%struct.discovery*, i32, %struct.ref**) #1

declare dso_local i32 @fetch_dumb(i32, %struct.ref**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
