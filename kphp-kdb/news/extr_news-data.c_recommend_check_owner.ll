; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_recommend_check_owner.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-data.c_recommend_check_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@forbidden_owners_hashset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@mandatory_owners_hashset = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
