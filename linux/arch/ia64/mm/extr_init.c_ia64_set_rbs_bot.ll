; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_ia64_set_rbs_bot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_init.c_ia64_set_rbs_bot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@MAX_USER_STACK_SIZE = common dso_local global i64 0, align 8
@RLIMIT_STACK = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
