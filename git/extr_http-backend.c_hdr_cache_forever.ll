; ModuleID = '/home/carl/AnghaBench/git/extr_http-backend.c_hdr_cache_forever.c'
source_filename = "/home/carl/AnghaBench/git/extr_http-backend.c_hdr_cache_forever.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Expires\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Cache-Control\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"public, max-age=31536000\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*)* @hdr_cache_forever to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdr_cache_forever(%struct.strbuf* %0) #0 {
  %2 = alloca %struct.strbuf*, align 8
  %3 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %2, align 8
  %4 = call i64 @time(i32* null)
  store i64 %4, i64* %3, align 8
  %5 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @hdr_date(%struct.strbuf* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %6)
  %8 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %9 = load i64, i64* %3, align 8
  %10 = add nsw i64 %9, 31536000
  %11 = call i32 @hdr_date(%struct.strbuf* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %10)
  %12 = load %struct.strbuf*, %struct.strbuf** %2, align 8
  %13 = call i32 @hdr_str(%struct.strbuf* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @hdr_date(%struct.strbuf*, i8*, i64) #1

declare dso_local i32 @hdr_str(%struct.strbuf*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
