; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_get_refs.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_get_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref = type { i32 }
%struct.discovery = type { %struct.ref* }

@.str = private unnamed_addr constant [17 x i8] c"git-receive-pack\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"git-upload-pack\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ref* (i32)* @get_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ref* @get_refs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.discovery*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.discovery* @discover_refs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %7)
  store %struct.discovery* %8, %struct.discovery** %3, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.discovery* @discover_refs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  store %struct.discovery* %11, %struct.discovery** %3, align 8
  br label %12

12:                                               ; preds = %9, %6
  %13 = load %struct.discovery*, %struct.discovery** %3, align 8
  %14 = getelementptr inbounds %struct.discovery, %struct.discovery* %13, i32 0, i32 0
  %15 = load %struct.ref*, %struct.ref** %14, align 8
  ret %struct.ref* %15
}

declare dso_local %struct.discovery* @discover_refs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
