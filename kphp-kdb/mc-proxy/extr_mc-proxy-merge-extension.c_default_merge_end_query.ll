; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_default_merge_end_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-merge-extension.c_default_merge_end_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.gather_entry = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"ERROR: use default for merge_end_query\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @default_merge_end_query(%struct.connection* %0, i8* %1, i32 %2, i8* %3, %struct.gather_entry* %4, i32 %5) #0 {
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gather_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.gather_entry* %4, %struct.gather_entry** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = call i32 @assert(i32 0)
  %14 = load %struct.connection*, %struct.connection** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @return_one_key(%struct.connection* %14, i8* %15, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 38)
  ret i32 %16
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
