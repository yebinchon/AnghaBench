; ModuleID = '/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack_config.c'
source_filename = "/home/carl/AnghaBench/git/extr_fetch-pack.c_fetch_pack_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"fetch.unpacklimit\00", align 1
@fetch_unpack_limit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"transfer.unpacklimit\00", align 1
@transfer_unpack_limit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"repack.usedeltabaseoffset\00", align 1
@prefer_ofs_delta = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"fetch.fsckobjects\00", align 1
@fetch_fsck_objects = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"transfer.fsckobjects\00", align 1
@transfer_fsck_objects = common dso_local global i32 0, align 4
@fetch_pack_config_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fetch_pack_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_pack_config() #0 {
  %1 = call i32 @git_config_get_int(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* @fetch_unpack_limit)
  %2 = call i32 @git_config_get_int(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* @transfer_unpack_limit)
  %3 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* @prefer_ofs_delta)
  %4 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* @fetch_fsck_objects)
  %5 = call i32 @git_config_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32* @transfer_fsck_objects)
  %6 = load i32, i32* @fetch_pack_config_cb, align 4
  %7 = call i32 @git_config(i32 %6, i32* null)
  ret void
}

declare dso_local i32 @git_config_get_int(i8*, i32*) #1

declare dso_local i32 @git_config_get_bool(i8*, i32*) #1

declare dso_local i32 @git_config(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
