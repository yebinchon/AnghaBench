; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_lookup_credential.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_lookup_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential_cache_entry = type { %struct.credential }
%struct.credential = type { i32 }

@entries_nr = common dso_local global i32 0, align 4
@entries = common dso_local global %struct.credential_cache_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.credential_cache_entry* (%struct.credential*)* @lookup_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.credential_cache_entry* @lookup_credential(%struct.credential* %0) #0 {
  %2 = alloca %struct.credential_cache_entry*, align 8
  %3 = alloca %struct.credential*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.credential*, align 8
  store %struct.credential* %0, %struct.credential** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @entries_nr, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %29

10:                                               ; preds = %6
  %11 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** @entries, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.credential_cache_entry, %struct.credential_cache_entry* %11, i64 %13
  %15 = getelementptr inbounds %struct.credential_cache_entry, %struct.credential_cache_entry* %14, i32 0, i32 0
  store %struct.credential* %15, %struct.credential** %5, align 8
  %16 = load %struct.credential*, %struct.credential** %3, align 8
  %17 = load %struct.credential*, %struct.credential** %5, align 8
  %18 = call i64 @credential_match(%struct.credential* %16, %struct.credential* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %10
  %21 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** @entries, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.credential_cache_entry, %struct.credential_cache_entry* %21, i64 %23
  store %struct.credential_cache_entry* %24, %struct.credential_cache_entry** %2, align 8
  br label %30

25:                                               ; preds = %10
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %6

29:                                               ; preds = %6
  store %struct.credential_cache_entry* null, %struct.credential_cache_entry** %2, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** %2, align 8
  ret %struct.credential_cache_entry* %31
}

declare dso_local i64 @credential_match(%struct.credential*, %struct.credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
