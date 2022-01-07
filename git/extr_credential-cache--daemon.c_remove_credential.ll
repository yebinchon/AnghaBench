; ModuleID = '/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_remove_credential.c'
source_filename = "/home/carl/AnghaBench/git/extr_credential-cache--daemon.c_remove_credential.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i32 }
%struct.credential_cache_entry = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.credential*)* @remove_credential to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_credential(%struct.credential* %0) #0 {
  %2 = alloca %struct.credential*, align 8
  %3 = alloca %struct.credential_cache_entry*, align 8
  store %struct.credential* %0, %struct.credential** %2, align 8
  %4 = load %struct.credential*, %struct.credential** %2, align 8
  %5 = call %struct.credential_cache_entry* @lookup_credential(%struct.credential* %4)
  store %struct.credential_cache_entry* %5, %struct.credential_cache_entry** %3, align 8
  %6 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** %3, align 8
  %7 = icmp ne %struct.credential_cache_entry* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.credential_cache_entry*, %struct.credential_cache_entry** %3, align 8
  %10 = getelementptr inbounds %struct.credential_cache_entry, %struct.credential_cache_entry* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %8, %1
  ret void
}

declare dso_local %struct.credential_cache_entry* @lookup_credential(%struct.credential*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
